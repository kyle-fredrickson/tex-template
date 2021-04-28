texroot = main.tex
output = $(texroot:.tex=.pdf)

all: $(output)

%.pdf: %.tex
	latexmk -pdf -f -M $<

clean:
	latexmk -CA
	rm *.bbl *.run.xml

.PHONY: clean all