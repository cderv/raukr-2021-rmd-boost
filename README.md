
# raukr-2021-rmd-boost

<!-- badges: start -->
<!-- badges: end -->

This is the repository with the resources (slides and demo) for the
Lecture at Raukr 2021 about “Boost your R Markdown skills!”

-   About Raukr : <https://nbisweden.github.io/workshop-RaukR-2106/>

-   Presentation: <https://raukr-boost-rmd-skills.netlify.app/>

## What is available in this repo ?

### Important files!

-   `demo-recipe-report.Rmd` is a demo file that contains some special
    recipes shown in the presentation an others. Aim is to have a
    working example to play with while looking at the recipes in the R
    Markdown Cookbook.
-   `slides/` is the folder containing the **xaringan** presentation
    source and related resources. Looking at the Rmd source can be
    interesting to see advanced usage of R Markdown.

### Other files.

-   `renv/`: infrastructure for **renv** package managament
-   `.Rprofile`: used for activating **renv** when entering the project
-   `Makefile`: used as workflow tool to render the different contents.
    (if you don’t know makefile, just use R code directly)

## Getting started…

### …the easy way !

This project can be played with in the RStudio Cloud project:
[![](https://img.shields.io/badge/RStudio%20Cloud-Open%20project-4D8DC9?style=for-the-badge&logo=data:image/png;base64,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)](https://rstudio.cloud/project/2654845)

Everything will configured an ready to go !

All the output files will also be already available to look at. This is
why there will be a bit more than the one listed above and contain in
the git repo.

You can update the project by running `git pull` in RStudio IDE’s
terminal.

## …the hard way !

To run this project locally here are the steps

-   Clone or fork this repository

    ``` sh
    git clone https://github.com/cderv/raukr-2021-rmd-boost.git
    ```

-   This project uses **renv** - this means that when you open the
    RStudio project it should install **renv** and ask you to restore
    all the environment

    ``` r
    renv::restore()
    ```

-   To compile to PDF, this project require LaTeX. It is best to use
    *TinyTeX*

    ``` r
    tinytex::install_tinytex()
    ```

    All required LaTeX packages for compiling will then be automatically
    installed.

-   If you want to run the slides, don’t forget to download remark

    ``` r
    xfun::in_dir("slides/", xaringan::summon_remark())
    ```

-   Everything should now be setup and you can render the different
    documents.

## Rendering the different documents

This project uses a *Makefile* to render the document.

-   Render the presentation

    ``` sh
    make render-slides
    ```

    Once built, `servr::httd("slides")` can be used to serve the
    presentation locally

-   Render the demo reports with

    ``` sh
    # full report with the parametrized part - HTML and PDF
    make reports-full

    # report without code show and appendix
    make reports
    ```

-   Render everything at once

    ``` sh
    make all
    ```

> I don’t know about Makefile - Can I just use R and RStudio ?

Yes you can ! Just use the knit button in RStudio. The output filename
could be different, but this repo is just about demo and toying with
examples, so it does not matter much. Otherwise, you can just use the
`rmarkdown::render()`.
