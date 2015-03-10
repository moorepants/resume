PREFIX=JasonMoore_cv

pdf:
	pdflatex $(PREFIX)
	biber $(PREFIX)
	pdflatex $(PREFIX)
	pdflatex $(PREFIX)

clean:
	rm *.aux *.bbl *.blg *.bcf *.log *.out *.run.xml
