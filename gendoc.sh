#!/bin/sh
rm -rf hosting/public
cd docs
Rscript -e "bookdown::render_book('index.rmd')"
mv _book public
rm -rf _book
mv public/ ../hosting/
rm -rf public
cd ../hosting
firebase deploy