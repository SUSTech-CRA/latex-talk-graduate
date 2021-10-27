all: doc

# ifeq ($(OS),Windows_NT)
#   # on Windows
#   RM = cmd //C del
# else
#   # on Unix/Linux
  RM = rm -f
# endif

DOC = main

.PHONY: clean doc fastdoc

fastdoc:
	xelatex -shell-escape $(DOC).tex

doc:
	latexmk $(DOC)
#	xelatex -shell-escape $(DOC).tex
#	biber $(DOC)
#	xelatex -shell-escape $(DOC).tex
#	xelatex -shell-escape $(DOC).tex

clean:
	latexmk -c $(DOC)
#	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.pdf *.bbl *.bcf *.blg *-blx.aux *-blx.bib *.run.xml *.nav *.pre *.snm *.vrb *.fls *.xdv *.fdb_latexmk
	$(RM) -r _minted*
