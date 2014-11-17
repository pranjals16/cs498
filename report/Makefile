install:
	xelatex report.tex
	bibtex report.aux
	xelatex report.tex
	xelatex report.tex
install2:
	latex 10511.tex
	bibtex 10511.aux
	latex 10511.tex
	latex 10511.tex
	dvipdf 10511.dvi

clean:
	rm *log
	rm *dvi
	rm *aux
	rm *blg
	rm *bbl
