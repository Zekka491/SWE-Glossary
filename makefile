default: glossario clean

glossario: glossario.tex
	latex glossario.tex
	makeindex glossario.glo -s glossario.ist -t glossario.glg -o glossario.gls
	latex glossario.tex
	dvipdfm glossario.dvi

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.glg
	rm -f *.glo
	rm -f *.gls
	rm -f *.glsdefs
	rm -f *.ist
	rm -f *.dvi
