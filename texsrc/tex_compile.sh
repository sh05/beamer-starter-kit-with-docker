#!/bin/ash
cd /workdir
uplatex main.tex
pbibtex main
uplatex main.tex
uplatex main.tex
dvipdfmx main.dvi
rm *.aux *.vrb *.nav *.out *.snm *.toc *.dvi *.log *.bbl *.blg
