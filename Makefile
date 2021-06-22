.PHONY: reports reports-full render-slides deploy clean

all: reports reports-full render-slides README.md

README.md: README.Rmd
		Rscript -e 'rmarkdown::render("$<", "github_document", quiet = TRUE)'


render-slides: slides/index.html

slides/index.html: slides/slides.Rmd
		Rscript -e 'xfun::in_dir("slides", rmarkdown::render("$(<F)", output_file = "$(@F)", quiet = TRUE))'

# targets for demo files
DEMORMD = demo-recipe-report.Rmd

reports-full: demo-report-full.pdf

reports: demo-report.pdf

demo-repot-full.pdf: $(DEMORMD)
		Rscript -e 'rmarkdown::render("$<", "all", output_file = "demo-report-full", params = list(full = TRUE), quiet = TRUE)'
		mv demo-recipe-report.pdf $@


demo-report.pdf: $(DEMORMD)
		Rscript -e 'rmarkdown::render("$<", "all", output_file = "demo-report", params = list(full = FALSE), quiet = TRUE)'
		mv demo-recipe-report.pdf $@

# deployement
## this require the netlify cli to be setup
deploy:
		cd slides && \
		netlify deploy --dir=. --prod || echo '## >> netlify not configured - deployement skipped'
