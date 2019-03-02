#rm -rf backend/app/templates/code_docs
cd docs
Rscript -e "bookdown::render_book('index.rmd')"
mv _book code_docs
rm -rf _book
mv code_docs/ ../backend/app/templates/