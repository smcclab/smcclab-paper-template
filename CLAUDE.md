# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a LaTeX academic paper template for the ANU Sound Music and Creative Computing Lab (SMCClab), using the ACM `manuscript, screen, review, nonacm` format (single-column, colour hyperlinks, review mode).

## Build Commands

```bash
make        # build main.pdf using xelatex via latexmk
make clean  # remove all latexmk-generated auxiliary files and output
```

The Makefile runs `latexmk -xelatex` and handles multi-pass compilation (bibliography, cross-references) automatically. Pushing to `main` triggers the same build via GitHub Actions (`.github/workflows/latex.yml`), which uploads `main.pdf` as a build artifact.

## Structure

- `main.tex` — Main document. Fill in conference details (`\acmConference`, `\acmDOI`, `\acmISBN`, `\copyrightyear`) and paper content here.
- `references.bib` — BibTeX bibliography. Add all references here.
- `figures/` — Place all figures/images here, reference with `\includegraphics`.
- `components/CHIZen-Paper-Checklist.tex` — CHIZen checklist, included as an appendix via `\input`. Requires `multicol`; fancyhdr header commands are suppressed with `\AtBeginDocument` in `main.tex`.
- `acmart.cls` — ACM document class (v2.16). Do not modify.
- `ACM-Reference-Format.bst` — ACM bibliography style. Do not modify.

## ACM Format Notes

The `acmart` class supports multiple conference formats. The current options are `manuscript, screen, review, nonacm`. To switch to a double-column camera-ready format, replace with `sigconf` and remove `review, nonacm`. Other single-column options: `acmsmall`, `acmlarge`, `acmtog`.

Copyright options for `\setcopyright`: `acmcopyright`, `acmlicensed`, `rightsretained`, `cc*` variants.
