pdf: Latex/*.tex
	cd Latex && pdflatex main.tex && pdflatex main.tex && cd ..

web: Latex/*.tex
	cd Latex && latexml main.tex | latexmlpost --destination=../index.html --format=html5 --splitat=section --navigationtoc=context --css=../fluids.css --javascript=https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-MML-AM_CHTML - && cd ..
	
all: pdf web
