#!/bin/bash

echo ###########################################################################################--destination-dir export/

#fetch latest version of the asciidoctor-vagrant file
wget -q https://raw.githubusercontent.com/roelvs/asciidoctor-vagrant/master/Vagrantfile

asciidoctor book_pcarch.asciidoc #-a stylesheet=riak.css
asciidoctor-pdf -r asciidoctor-mathematical book_pcarch.asciidoc -a pdf-stylesdir=. -a pdf-style=pdf-theme.yml -a pdf-fontsdir=pdffonts/ -v

rm stem*.png -f
rm images/stem*.png -f
rm book_pcarch.pdfmarks -f
