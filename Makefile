.PHONY: cv.pdf

LATEX = xelatex
SRCS = $(shell find . -name '*.tex')
TEX_FLAGS = -interaction=nonstopmode -halt-on-error

ALL: cv.pdf

cv.pdf: $(SRCS)
	$(LATEX) $(TEX_FLAGS) cv.tex
	$(LATEX) $(TEX_FLAGS) cv.tex

clean:
	rm -f *.aux *.log *.out *.bbl *.blg *~ *.bak $(FIGS) *.ps *.pdf *.synctex.gz
	rm -rf auto
	rm -f cv.pdf
