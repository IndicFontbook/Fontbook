all: Fontbook.pdf

Fontbook.pdf: Fontbook.tex *.tex *.sty
	xelatex $<
	xelatex $<	# to include generated ToC
	evince Fontbook.pdf

clean:
	rm -f Fontbook.{pdf,aux,toc,log}
