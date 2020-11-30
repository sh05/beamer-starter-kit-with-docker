#!/bin/ash
cd /workdir

uplatex main.tex
pbibtex main
uplatex main.tex
uplatex main.tex
dvipdfmx main.dvi
rm *.aux *.vrb *.nav *.out *.snm *.toc *.dvi *.log *.bbl *.blg

cp /workdir/main.tex /workdir/handout.tex
sed -i 's/]{beamer}/, handout]{beamer}/' /workdir/handout.tex

uplatex handout.tex
pbibtex handout
uplatex handout.tex
uplatex handout.tex
dvipdfmx handout.dvi
rm *.aux *.vrb *.nav *.out *.snm *.toc *.dvi *.log *.bbl *.blg
