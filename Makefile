PREFIX=JasonMoore_cv
SUB_BIB_PATH = /home/moorepants/bin/generate_sub_bib.py
BICYCLE_BIB_PATH = /home/moorepants/Research/bicycle-mechanics/Papers/bicycle.bib

pdf:
	if [ -e $(BICYCLE_BIB_PATH) ]; then \
		python $(SUB_BIB_PATH) $(PREFIX).tex $(BICYCLE_BIB_PATH) references.bib; \
	fi
	pdflatex $(PREFIX)
	biber $(PREFIX)
	pdflatex $(PREFIX)
	pdflatex $(PREFIX)

clean:
	rm *.aux *.bbl *.blg *.bcf *.log *.out *.run.xml
