FILE=copland_json

all: pdf

pdf: dvi
#pdf: ps
#	ps2pdf $(FILE).ps

#ps: dvi
#	dvips -t letter $(FILE).dvi -o $(FILE).ps

dvi: $(FILE).tex
	pdflatex $(FILE)
#bibtex $(FILE)
#	pdflatex $(FILE)
#	pdflatex $(FILE)

bib:  dvi

clean:
	rm -rf *.aux *.lof *.lot *.tox *.log *.out *.toc *.dvi *.ps *.blg *.bbl *~
