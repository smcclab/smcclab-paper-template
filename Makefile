MAIN = main

.PHONY: all clean

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex references.bib
	latexmk -xelatex -interaction=nonstopmode -halt-on-error $(MAIN)

clean:
	latexmk -C $(MAIN)
