#!/bin/ash
cd /workdir

rm *.aux *.vrb *.nav *.out *.snm *.toc *.dvi *.log
uplatex main.tex
pbibtex main
uplatex main.tex
uplatex main.tex
dvipdfmx main.dvi
