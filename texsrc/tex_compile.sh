#!/bin/ash

rm *.aux *.vrb *.nav *.out *.snm *.toc *.dvi *.log
uplatex -output-directory=/workdir /workdir/main.tex
dvipdfmx -o /workdir/main.pdf /workdir/main.dvi
uplatex -output-directory=/workdir /workdir/main.tex
dvipdfmx -o /workdir/main.pdf /workdir/main.dvi

