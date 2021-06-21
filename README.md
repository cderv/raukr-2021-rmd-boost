
# raukr-2021-rmd-boost

<!-- badges: start -->
<!-- badges: end -->

This is the repository with the resources (slides and demo) for the Lecture at Raukr 2021 about "Boost your R Markdown skills!"

* About Raukr : https://nbisweden.github.io/workshop-RaukR-2106/

* Presentation: https://raukr-boost-rmd-skills.netlify.app/

## What is available in this repo ?

### Important files! 

* `demo-recipe-report.Rmd` is a demo file that contains some special recipes shown in the presentation an others. Aim is to have a working example to play with while looking at the recipes in the R Markdown Cookbook. 
* `slides/` is the folder containing the **xaringan** presentation source and related resources. Looking at the Rmd source can be interesting to see advanced usage of R Markdown. 

### Other files.

* `renv/`: infrastructure for **renv** package managament
* `.Rprofile`: used for activating **renv** when entering the project
* `Makefile`: used as workflow tool to render the different contents. (if you don't know makefile, just use R code directly) 


## Getting started... 

### ...the easy way ! 

This project can be played with in the RStudio Cloud project: https://rstudio.cloud/project/2654845

Everything will configured an ready to go ! 

All the output files will also be already available to look at. This is why there will be a bit more than the one listed above and contain in the git repo. 

You can update the project by running `git pull` in RStudio IDE's terminal.

## ...the hard way ! 

To run this project locally here are the steps

* Clone or fork this repository
  ```sh
  git clone https://github.com/cderv/raukr-2021-rmd-boost.git
  ```

* This project uses **renv** - this means that when you open the RStudio project it should install **renv** and ask you to restore all the environment
  ```r
  renv::restore()
  ```

* To compile to PDF, this project require LaTeX. It is best to use _TinyTeX_
  ```r
  tinytex::install_tinytex()
  ```
  All required LaTeX packages for compiling will then be automatically installed.
  
* If you want to run the slides, don't forget to download remark 
  ```r
  xfun::in_dir("slides/", xaringan::summon_remark())
  ```

* Everything should now be setup and you can render the different documents.

## Rendering the different documents

This project uses a _Makefile_ to render the document. 

* Render the presentation 
  ```sh
  make slides
  ```

* Render the demo reports with 
  ```sh
  # full report with the parametrized part - HTML and PDF
  make reports-full
  
  # report without code show and appendix
  make reports
  ```

* Render everything at once 
  ```sh
  make all
  ```

> I don't know about Makefile - Can I just use R and RStudio ? 

Yes you can ! Just use the knit button in RStudio. The output filename could be different, but this repo is just about demo and toying with examples, so it does not matter much. You can also open the Makefile to see the R commands used.
