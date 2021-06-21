all: reports reports-full render deploy

render:
		Rscript -e 'xfun::in_dir("slides", rmarkdown::render("slides.Rmd", output_file = "index.html"), quiet = TRUE)'

deploy:
		cd slides && \
		netlify deploy --dir=. --prod

reports-full:
		Rscript -e 'rmarkdown::render("demo-recipe-report.Rmd", "all", output_file = "demo-report-full", params = list(full = TRUE), quiet = TRUE)'
		mv demo-recipe-report.pdf demo-report-full.pdf

reports:
		Rscript -e 'rmarkdown::render("demo-recipe-report.Rmd", "all", output_file = "demo-report", params = list(full = FALSE), quiet = TRUE)'
		mv demo-recipe-report.pdf demo-report.pdf
