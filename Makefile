all: render deploy

render:
		Rscript -e 'xfun::in_dir("slides", rmarkdown::render("slides.Rmd", output_file = "index.html"))'

deploy:
		cd slides && \
		netlify deploy --dir=. --prod
