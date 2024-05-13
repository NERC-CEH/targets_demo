#!/usr/bin/env Rscript

pkgload <- function() {
  packages = c("targets", "dplyr","ggplot2","readr","visNetwork")
  packagecheck <- match( packages, utils::installed.packages()[,1] )
  packagestoinstall <- packages[ is.na( packagecheck ) ]

  if( length( packagestoinstall ) > 0L ) {
    utils::install.packages( packagestoinstall,
                             repos = "http://www.stats.bris.ac.uk/R/"
    )
  } else {
    print( "All requested packages already installed" )
  }
}

pkgload()

library(targets)
library(ggplot2)

tar_visnetwork()

tar_outdated()

tar_make()

tar_read(data)

tar_read(plot)
tar_load_everything()
plot
model
data
