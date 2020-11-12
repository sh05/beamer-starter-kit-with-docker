#!/bin/ash

rm *.aux *.nav *.out *.snm *.toc *.dvi *.log
uplatex -output-directory=/workdir /workdir/main.tex
dvipdfmx -o /workdir/main.pdf /workdir/main.dvi
uplatex -output-directory=/workdir /workdir/main.tex
dvipdfmx -o /workdir/main.pdf /workdir/main.dvi

cp /workdir/main.tex /workdir/handout.tex
sed -i 's/]{beamer}/, handout]{beamer}/' /workdir/handout.tex

rm *.aux *.nav *.out *.snm *.toc *.dvi *.log
uplatex -output-directory=/workdir /workdir/handout.tex
dvipdfmx -o /workdir/handout.pdf /workdir/handout.dvi
uplatex -output-directory=/workdir /workdir/handout.tex
dvipdfmx -o /workdir/handout.pdf /workdir/handout.dvi
