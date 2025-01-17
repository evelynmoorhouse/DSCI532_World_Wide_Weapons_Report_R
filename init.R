# R script to run author supplied code, typically used to install additional R packages
# contains placeholders which are inserted by the compile script
# NOTE: this script is executed in the chroot context; check paths!

r <- getOption("repos")
r["CRAN"] <- "http://cloud.r-project.org"
options(repos=r)

# ======================================================================

# packages go here
install.packages("remotes")

# installs Rcpp, rlang, BH
install.packages("later")

# R Natural Earth
install.packages("sf")
install.packages("rnaturalearth", configure.args = "--with-udunits2-lib=/app/.apt/usr/lib/x86_64-linux-gnu")
install.packages("rnaturalearthdata")

# Other packages
install.packages("https://cran.r-project.org/src/contrib/jsonlite_1.6.tar.gz", type="source", repos=NULL)
install.packages("rjson")
install.packages("listenv")
install.packages("anytime")
install.packages("heatmaply")
install.packages("dplyr")
install.packages("readr")
install.packages("purrr")
install.packages("stringr")

# installs magrittr, promises, R6
remotes::install_version("httpuv", version = "1.4.5.1", repos = "http://cloud.r-project.org", upgrade="never")

# installs crayon, digest, htmltools, mime, sourcetools, xtable
remotes::install_version("shiny", version = "1.2.0", repos = "http://cloud.r-project.org", upgrade="never")

# installs askpass, assertthat, base64enc, cli, colorspace, crosstalk, curl, data.table, dplyr, fansi, ggplot2, glue, gtable, hexbin, htmlwidgets, httr, labeling, lattice, lazyeval, mgcv, munsell, nlme, openssl, pillar, pkgconfig, plogr, plyr, purrr, RColorBrewer, reshape2, scales, stringi, stringr, sys, tibble, tidyr, tidyselect, utf8, viridisLite, withr, yaml
remotes::install_version("plotly", version = "4.9.1", repos = "http://cloud.r-project.org", upgrade="never")

install.packages("assertthat", type="source", repos=NULL)
install.packages("xml2", type="source", repos=NULL)
install.packages("triebeard", type="source", repos=NULL)
install.packages("urltools", type="source", repos=NULL)
install.packages("jsonlite", type="source", repos=NULL)
install.packages("webutils", type="source", repos=NULL)
install.packages("brotli", type="source", repos=NULL)
install.packages("reqres", type="source", repos=NULL)
install.packages("uuid", type="source", repos=NULL)
install.packages("base64enc", type="source", repos=NULL)
install.packages("codetools", type="source", repos=NULL)
install.packages("globals", type="source", repos=NULL)
install.packages("future", type="source", repos=NULL)


# fiery and friends
install.packages("https://cloud.r-project.org/src/contrib/routr_0.4.0.tar.gz", type="source", repos=NULL)
install.packages("https://cloud.r-project.org/src/contrib/fiery_1.1.2.tar.gz", type="source", repos=NULL)

# dash components
remotes::install_github("plotly/dash-table", ref="042ad65")
remotes::install_github("plotly/dash-html-components", ref="17da1f4")
remotes::install_github("plotly/dash-core-components", ref="cc1e654")
remotes::install_github("plotly/dashR", ref="dev", dependencies=FALSE)
