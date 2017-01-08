ARCHIVO = thesis
PRESESENTACION = presentacion
	
main:

	pdflatex $(ARCHIVO).tex
	makeglossaries $(ARCHIVO).glo
	bibtex $(ARCHIVO).aux
	pdflatex $(ARCHIVO).tex
	pdflatex $(ARCHIVO).tex

clean:
	rm *.txt *.log *.aux *.make *.bak *.d *.fls *.toc $(ARCHIVO).acn $(ARCHIVO).glo $(ARCHIVO).ist $(ARCHIVO).out $(ARCHIVO).toc $(ARCHIVO).idx  $(ARCHIVO).lof  $(ARCHIVO).lot $(ARCHIVO).blg $(ARCHIVO).bbl $(ARCHIVO).glg $(ARCHIVO).gls  $(PRESENTACION).acn $(PRESENTACION).glo $(PRESENTACION).ist $(PRESENTACION).out $(PRESENTACION).toc $(PRESENTACION).idx  $(PRESENTACION).lof  $(PRESENTACION).lot $(PRESENTACION).blg $(PRESENTACION).bbl $(PRESENTACION).glg $(PRESENTACION).gls
	rm -rf *~
