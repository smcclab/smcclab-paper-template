# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a LaTeX academic paper template for the ANU Sound Music and Creative Computing Lab (SMCClab), using the ACM `manuscript` (single-column) format.

## Build Commands

```bash
make        # build main.pdf using xelatex via latexmk
make clean  # remove all latexmk-generated auxiliary files and output
```

The Makefile runs `latexmk -xelatex` and handles multi-pass compilation (bibliography, cross-references) automatically.

## Structure

- `main.tex` — Main document. ACM `manuscript` class. Fill in conference details (`\acmConference`, `\acmDOI`, `\acmISBN`, `\copyrightyear`) and paper content here.
- `references.bib` — BibTeX bibliography. Add all references here.
- `figures/` — Place all figures/images here, reference with `\includegraphics`.
- `acmart.cls` — ACM document class (v2.16). Do not modify.
- `ACM-Reference-Format.bst` — ACM bibliography style. Do not modify.

## ACM Format Notes

The `acmart` class supports multiple conference formats. The current setting is `manuscript` (single-column). Double-column conference option: `sigconf`. Other options: `acmsmall`, `acmlarge`, `acmtog`, `siggraph`, `sigplan`, `sigchi`, `sigchi-a`.

Copyright options for `\setcopyright`: `acmcopyright`, `acmlicensed`, `rightsretained`, `cc*` variants.
