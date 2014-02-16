notebook:
	ipython notebook --pylab --notebook-dir=.

slides:
	ipython nbconvert --to slides Fantasy\ Football\ Presentation.ipynb
	mv Fantasy\ Football\ Presentation.slides.html index.html

watch:
	fswatch . "make slides"

serveslides:
	ipython nbconvert --to slides Fantasy\ Football\ Presentation.ipynb --post serve

.PHONY: notebook
