rm -rf gh-pages
cd docs
Rscript -e "bookdown::render_book('index.rmd')"
mv _book gh-pages
rm -rf _book
mv gh-pages/ ../
rm -rf gh-pages