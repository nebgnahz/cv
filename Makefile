.PHONY: cv.pdf coverletter.pdf

LATEX = xelatex
SRCS = $(shell find . -name '*.tex')

ALL: cv.pdf coverletter.pdf

cv.pdf: $(SRCS)
	$(LATEX) --halt-on-error cv.tex
	$(LATEX) --halt-on-error cv.tex

coverletter.pdf: coverletter.tex
	$(LATEX) --halt-on-error coverletter.tex

clean:
	rm -f *.aux *.log *.out *.bbl *.blg *~ *.bak $(FIGS) *.ps *.pdf *.synctex.gz
	rm -rf auto
	rm -f cv.pdf coverletter.pdf
