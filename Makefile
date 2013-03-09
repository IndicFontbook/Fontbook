default: pdf
all: pdf html

pdf: Fontbook.pdf

%.html:
	latex2html Fontbook.tex

%.pdf: Fontbook.tex *.tex *.sty
	xelatex $<
	xelatex $<	# to include generated ToC

clean:
	rm -f Fontbook.{pdf,aux,toc,log}
