pdf: Latex/*.tex
	cd Latex && pdflatex main.tex && pdflatex main.tex && cd .. && cp Latex/main.pdf ./IntroFluidDynamics.pdf

web: Latex/*.tex
	cd Latex && latexml main.tex | latexmlpost --destination=../index.html --format=html5 --splitat=section --navigationtoc=context --css=style.css --javascript=https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-MML-AM_CHTML - && cd ..
	
all: pdf web
