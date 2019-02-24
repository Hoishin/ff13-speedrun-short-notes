SHELL := /bin/bash

build:
	pdflatex main.tex
	pdflatex main.tex

fmt:
	for f in chapters/*.tex; do ~/.latexindent.pl/latexindent.pl $$f -w >/dev/null; done

clean:
	rm *.log *.aux *.out *.pdf *.gz *.toc chapters/*.bak*
