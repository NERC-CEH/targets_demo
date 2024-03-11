#!/usr/bin/env Rscript
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