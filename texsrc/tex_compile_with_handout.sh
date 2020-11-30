#!/bin/ash
cd /workdir

rm *.aux *.vrb *.nav *.out *.snm *.toc *.dvi *.log *.bbl *.blg
uplatex main.tex
pbibtex main
uplatex main.tex
uplatex main.tex
dvipdfmx main.dvi

cp /workdir/main.tex /workdir/handout.tex
sed -i 's/]{beamer}/, handout]{beamer}/' /workdir/handout.tex

rm *.aux *.vrb *.nav *.out *.snm *.toc *.dvi *.log *.bbl *.blg
uplatex handout.tex
pbibtex handout
uplatex handout.tex
uplatex handout.tex
dvipdfmx handout.dvi
