# The \*R for Mass Spectrometry\* project and meta-package

## Introduction

`RforMassSpectrometry` is a meta-package, to manage and document the *R
for Mass Spectrometry* (<https://www.rformassspectrometry.org/>)
project. The goal of the project to provide efficient, thoroughly
documented, tested and flexible R software for the analysis and
interpretation of high throughput mass spectrometry assays, including
proteomics and metabolomics experiments. The project formalises the
longtime collaborative development efforts of its members under the *R
for Mass Spectrometry* organisation to facilitate dissemination and
accessibility of their work.

## Installation

To install the core R for Mass Spectrometry packages, you will need the
`BiocManager` package, available on CRAN. If not already available,
install it with

``` r

if (!require("BiocManager"))
    install.package("BiocManager")
```

To proceed with the installation, run

``` r

BiocManager::install("RforMassSpectrometry/RforMassSpectrometry")
```

Note that some very recent Bioconductor will be needed to install and
run the suite of R for Mass Spectrometry packages, and will require a
recent version of R and possibly even installing the [Bioconductor
development
version](http://bioconductor.org/developers/how-to/useDevel/).

Loading the `RforMassSpectrometry` package with

``` r

library("RforMassSpectrometry")
```

    ## Warning: replacing previous import 'MsCoreUtils::entropy' by 'Spectra::entropy'
    ## when loading 'RforMassSpectrometry'

    ## Warning: replacing previous import 'MsCoreUtils::bin' by 'Spectra::bin' when
    ## loading 'RforMassSpectrometry'

    ## Warning: replacing previous import 'MsCoreUtils::smooth' by 'Spectra::smooth'
    ## when loading 'RforMassSpectrometry'

    ## 
    ## Visit https://RforMassSpectrometry.org for detail about the project.

will load the required core packages.

## Code of Conduct

As contributors and maintainers of the *R for Mass Spectrometry*
initiative, we pledge to respect all people who contribute through
reporting issues, posting feature requests, updating documentation,
submitting pull requests or patches, and other activities. We are
committed to making participation in this project a harassment-free
experience for everyone, regardless of level of experience, gender,
gender identity and expression, sexual orientation, disability, personal
appearance, body size, race, ethnicity, age, or religion. Examples of
unacceptable behaviour by participants include the use of sexual
language or imagery, derogatory comments or personal attacks, trolling,
public or private harassment, insults, or other unprofessional conduct.
Project maintainers have the right and responsibility to remove, edit,
or reject comments, commits, code, wiki edits, issues, and other
contributions that are not aligned to this Code of Conduct. Project
maintainers who do not follow the Code of Conduct may be removed from
the project team. Instances of abusive, harassing, or otherwise
unacceptable behaviour may be reported by opening an issue or contacting
one or more of the project maintainers.

This Code of Conduct is adapted from the Contributor Covenant, version
1.0.0, available from <http://contributor-covenant.org/version/1/0/0/>

As members of the Bioconductor community, we also abide by the
[Bioconductor code of
conduct](https://bioconductor.org/about/code-of-conduct/).

## Contributions

The *R for Mass Spectrometry* project welcomes contributions in the form
of ideas, documentation, code, packages, fixes (bugs and typos), … as
pull requests (PR). We invite you to discuss any of these opening a
GitHub issue in the relevant package github repository.

If you have any direct contributions to an existing package, we suggest
to first discuss these in a dedicted issue if it implies any substantial
changes (no need for an issue if its a simple typo, and we really
appreciate those). If a non-trivial portion of your contribution is
copied from somewhere else (such as AI-generated or copied from another
software project) you are required to discuss it in the issue and
disclose it in the PR description and provide details about the
provenance (for example, ‘Assisted-by: Name of AI’ or ‘Code copied from:
source’). Make sure to cite the provenance in the new code and that the
newly contributed code can be redistributed under the software/packages
licensing terms.

Contributions, even those from core members, are always expected to come
in the form of a PR that then undergoes a formal review. To do this,
start by forking the package you want to contribute. It is also advised
to work in, and make the PR, from a non-master branch. Good branch names
include `issueX` when it relates to a specific issue, `feat-X`, `bug-Y`,
`docs-Z` for new features, bug fixes and documentation updates
respectively. The reviewers might ask for additional clarifications
and/or changes prior to merging the PR. When contemplating contributing
code, please follow the style guide below.

In particular, when several developers collaborate on a feature, an
admin should create a dedicated branch
`RforMassSpectrometry/Package:branch`. Developers should then fetch that
branch in their local copy of the `Package` repository and send PRs to
that branch too, where it will be reviewed, and eventually merged into
`RforMassSpectrometry/Package:master`.

We also anticipate to open up some specific requests for contributions
and invite specific members of the community, if we identify a specific
need and/or a specific developer to address that need.

All *R for Mass Spectrometry* packages are released under open licences.
Any contributions will have to adhere to these. If you cannot guarantee
the provenance and legality of your contribution, please do not submit
it as we won’t be able to accept it.

Reviewers will do their best to help you to get the PR merged[^1]. See
also the [tidyverse](https://tidyverse.tidyverse.org/CONTRIBUTING.html)
contribution guide for additional resources and instructions.

#### Commit messages

Commit messages should follow the [Conventional
Commits](https://www.conventionalcommits.org/en/v1.0.0-beta.4/#summary)
guidelines. In particular, the following *types* are recommended (based
on [angulars
types](https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#-commit-message-guidelines)):

- `build:` Changes that affect the build system or external dependencies
  (example scopes: depends, suggests, imports, …).
- `ci:` Changes to the continous integration (CI) configuration files
  and scripts (example: Travis configuration file).
- `docs:` Documentation only changes, including manual pages and
  vignettes.
- `feat:` A new feature.
- `fix:` A bug fix.
- `perf:` A code change that improves performance.
- `refactor:` A code change that neither fixes a bug nor adds a feature.
- `style:` Changes that do not affect the meaning of the code
  (white-space, formatting, …).
- `test:` Adding missing tests or correcting existing tests.
- `other:` Anything that doesn’t fit in the above. Consider opening an
  issue suggestion a new type.

#### Credit where credit is due

We also want to offer proper credit to those that provide substantial
contributions. Substantial contributions include, for example

- new functionality that goes beyond e.g. a simple plot function
- bug fixes combined with related unit tests
- extended documentation, examples or vignettes describing a complete
  (potentially alternative) analysis workflow or use-case

Fixing typo(s) isn’t considered a substantial contribution per-se, even
though they are highly appreciated.

Once a substantial contribution passes review and is merged, we will add
the contributor in the package’s author list as an official contributor
(`ctb` role) or even author (`aut` role) for more substantial
contributions. The contributors name will also be added to the *R for
Mass Spectrometry* web page and to any relevant publications that
directly stem from their work.

## Coding style

The *R for Mass Spectrometry* packages follows the [Bioconductor style
guide](https://bioconductor.org/developers/how-to/coding-style/). In
particular

- Do not use `.` when naming symbols.
- A leading `.` can be used for hidden/local functions or variables.
- Snake case should be restricted to internal functions. For
  consistency, we favour camel case for public functions.
- Class names should start with a capital and each class should posses a
  constructor with identical name. Running the constructor without any
  input should produce a valid empty object.
- Use `##` to start full-line comments.
- For roxygen headers `#'` is preferred, although `##'` is tolerated.
- Use spaces between `=` in function arguments or class definition:
  `f(a = 1, b = 2)`.
- Always use a space after a comma: `a, b, c`.
- Always use spaces around binary operators: `a + b`.
- Lines should be kept shorter than 80 characters. For example the
  following code isn’t accepted

``` r

# no wrap at 80
someVeryLongVariableName <- someVeryLongFunctionName(withSomeEvenLongerFunctionArgumentA = 1, withSomeEvenLongerFunctionArgumentB = 2)
```

and should be wrapped as shown below:

``` r

# alternative 1
someVeryLongVariableName <-
    someVeryLongFunctionName(withSomeEvenLongerFunctionArgumentA = 1,
                             withSomeEvenLongerFunctionArgumentB = 2)
# alternative 2
someVeryLongVariableName <- someVeryLongFunctionName(
    withSomeEvenLongerFunctionArgumentA = 1,
    withSomeEvenLongerFunctionArgumentB = 2)
```

## Contact

Please see the [contact
page](https://www.rformassspectrometry.org/contact/) for instructions on
how to get in touch.

## Session info

    ## R version 4.5.2 (2025-10-31)
    ## Platform: x86_64-pc-linux-gnu
    ## Running under: Ubuntu 24.04.3 LTS
    ## 
    ## Matrix products: default
    ## BLAS:   /usr/lib/x86_64-linux-gnu/openblas-pthread/libblas.so.3 
    ## LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/libopenblasp-r0.3.26.so;  LAPACK version 3.12.0
    ## 
    ## locale:
    ##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
    ##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
    ##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
    ##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
    ##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
    ## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
    ## 
    ## time zone: UTC
    ## tzcode source: system (glibc)
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ## [1] RforMassSpectrometry_0.2.2 BiocStyle_2.38.0          
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] SummarizedExperiment_1.40.0 MsExperiment_1.12.0        
    ##  [3] xfun_0.57                   bslib_0.10.0               
    ##  [5] htmlwidgets_1.6.4           QFeatures_1.20.0           
    ##  [7] PSMatch_1.14.0              Biobase_2.70.0             
    ##  [9] lattice_0.22-9              PTMods_0.99.6              
    ## [11] vctrs_0.7.3                 tools_4.5.2                
    ## [13] generics_0.1.4              stats4_4.5.2               
    ## [15] parallel_4.5.2              tibble_3.3.1               
    ## [17] cluster_2.1.8.2             pkgconfig_2.0.3            
    ## [19] BiocBaseUtils_1.12.0        Matrix_1.7-5               
    ## [21] desc_1.4.3                  S4Vectors_0.48.1           
    ## [23] lifecycle_1.0.5             compiler_4.5.2             
    ## [25] stringr_1.6.0               textshaping_1.0.5          
    ## [27] Seqinfo_1.0.0               codetools_0.2-20           
    ## [29] clue_0.3-68                 htmltools_0.5.9            
    ## [31] sass_0.4.10                 yaml_2.3.12                
    ## [33] lazyeval_0.2.3              pillar_1.11.1              
    ## [35] tidyr_1.3.2                 pkgdown_2.2.0.9000         
    ## [37] jquerylib_0.1.4             MASS_7.3-65                
    ## [39] BiocParallel_1.44.0         cachem_1.1.0               
    ## [41] DelayedArray_0.36.1         MetaboCoreUtils_1.18.1     
    ## [43] abind_1.4-8                 tidyselect_1.2.1           
    ## [45] digest_0.6.39               stringi_1.8.7              
    ## [47] purrr_1.2.2                 dplyr_1.2.1                
    ## [49] reshape2_1.4.5              bookdown_0.46              
    ## [51] fastmap_1.2.0               grid_4.5.2                 
    ## [53] cli_3.6.6                   SparseArray_1.10.10        
    ## [55] magrittr_2.0.5              S4Arrays_1.10.1            
    ## [57] rmarkdown_2.31              XVector_0.50.0             
    ## [59] matrixStats_1.5.0           igraph_2.3.1               
    ## [61] otel_0.2.0                  ragg_1.5.2                 
    ## [63] evaluate_1.0.5              knitr_1.51                 
    ## [65] GenomicRanges_1.62.1        IRanges_2.44.0             
    ## [67] MultiAssayExperiment_1.36.2 rlang_1.2.0                
    ## [69] Rcpp_1.1.1-1.1              glue_1.8.1                 
    ## [71] DBI_1.3.0                   BiocManager_1.30.27        
    ## [73] BiocGenerics_0.56.0         Spectra_1.20.1             
    ## [75] jsonlite_2.0.0              plyr_1.8.9                 
    ## [77] AnnotationFilter_1.34.0     R6_2.6.1                   
    ## [79] MatrixGenerics_1.22.0       systemfonts_1.3.2          
    ## [81] fs_2.1.0                    ProtGenerics_1.42.0        
    ## [83] MsCoreUtils_1.25.4

[^1]: Useful reading: The [nodejs reviewing PRs for
    reviewers](https://github.com/nodejs/node/blob/main/doc/contributing/pull-requests.md#reviewing-pull-requests)
    guide and Guix’ [Reviewing the Work of
    Others](https://guix.gnu.org/manual/devel/en/guix.html#Reviewing-the-Work-of-Others)
