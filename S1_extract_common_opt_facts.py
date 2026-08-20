#!/usr/bin/env python3

import re
import sys
from pathlib import Path


def split_records(text: str):
    """
    GCC .opt files are record-like text files separated by blank lines.
    This parser is intentionally simple for Stage 0 diagnostics.
    """
    records = []
    current = []

    for line in text.splitlines():
        if line.strip() == "":
            if current:
                records.append(current)
                current = []
        else:
            current.append(line.rstrip("\n"))

    if current:
        records.append(current)

    return records


def extract_var(properties: str):
    m = re.search(r"\bVar\(([^)]+)\)", properties)
    if not m:
        return None
    return m.group(1).strip()


def normalize_option_name(raw_name: str):
    """
    GCC .opt option names omit the leading dash.
    Example:
      fgcse -> -fgcse
    """
    raw_name = raw_name.strip()

    # Ignore comments or invalid records.
    if not raw_name or raw_name.startswith(";") or raw_name.startswith("#"):
        return None

    # For this Stage-0 experiment, keep only -f... options.
    if not raw_name.startswith("f"):
        return None

    return "-" + raw_name


def storage_name_from_var(var_name: str):
    """
    GCC generated option-state fields are commonly visible as x_flag_name.
    This is a reconstruction convenience, not a .opt property itself.
    """
    if var_name.startswith("flag_"):
        return "x_" + var_name
    return "x_" + var_name


def main():
    if len(sys.argv) != 3:
        print(
            "Usage: S1_extract_common_opt_facts.py "
            "<path-to-gcc/common.opt> <output-qll>",
            file=sys.stderr,
        )
        sys.exit(1)

    common_opt_path = Path(sys.argv[1])
    output_qll_path = Path(sys.argv[2])

    text = common_opt_path.read_text(encoding="utf-8", errors="ignore")
    records = split_records(text)

    facts = []

    for record in records:
        if len(record) < 2:
            continue

        raw_name = record[0].strip()
        properties = record[1].strip()

        option_name = normalize_option_name(raw_name)
        if option_name is None:
            continue

        if "Optimization" not in properties.split():
            continue

        var_name = extract_var(properties)
        if var_name is None:
            continue

        storage_name = storage_name_from_var(var_name)

        facts.append((option_name, var_name, storage_name))

    facts = sorted(set(facts))

    with output_qll_path.open("w", encoding="utf-8") as out:
        out.write("/**\n")
        out.write(" * @name GCC option facts generated from gcc/common.opt\n")
        out.write(" * @description Generated Stage-0 facts: option -> Var(...) variable.\n")
        out.write(" */\n\n")

        out.write("predicate gccOptionFact(\n")
        out.write("  string optionName,\n")
        out.write("  string visibleVarName,\n")
        out.write("  string storageFieldName\n")
        out.write(") {\n")

        for i, (option, var, storage) in enumerate(facts):
            prefix = "  " if i == 0 else "  or\n  "
            out.write(
                f'{prefix}optionName = "{option}" and '
                f'visibleVarName = "{var}" and '
                f'storageFieldName = "{storage}"\n'
            )

        out.write("}\n")

    print(f"Extracted facts: {len(facts)}")
    print(f"Wrote: {output_qll_path}")


if __name__ == "__main__":
    main()