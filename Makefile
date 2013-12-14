default: pdf
all: clean pdf html

pdf: clean Fontbook.pdf

%.html:
	latex2html -html_version 4.0,latin1,unicode Fontbook.tex

%.pdf: Fontbook.tex *.tex *.sty
	xelatex $<
	xelatex $<	# to include generated ToC

clean:
	rm -f Fontbook.pdf Fontbook.aux Fontbook.toc Fontbook.log
