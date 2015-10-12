default: glossario.pdf clean

glossario.pdf: glossario.tex
	latex glossario.tex
	makeindex glossario.glo -s glossario.ist -t glossario.glg -o glossario.gls
	latex glossario.tex
	dvipdfm glossario.dvi

clean:
	rm -f *.lot
	rm -f *.lof
	rm -f *.aux
	rm -f *.toc
	rm -f *.out
	rm -f *.log
	rm -f *.glg
	rm -f *.glo
	rm -f *.gls
	rm -f *.glsdefs
	rm -f *.ist
	rm -f *.dvi
	rm -f images/*.pdf
	rm -f images/lm/*.pdf
	rm -f images/non-linear/*.pdf
	rm -f images/non-linear/gam/*.pdf
	rm -f images/class/*.pdf
	rm -f sections/*.aux
