#!/usr/local/bin/Rscript

# generate dataset with certain seed
set.seed(1)
data <- dyntoy::generate_dataset(
  id = "specific_example/ouijaflow",
  num_cells = 100,
  num_features = 99,
  model = "linear",
  normalise = FALSE
)

# add method specific args (if needed)
data$params <- list()
data$seed <- 1

# write example dataset to file
file <- commandArgs(trailingOnly = TRUE)[[1]]
dynutils::write_h5(data, file)