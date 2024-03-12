# R/functions.R
get_data <- function(file) {
  df <- read_csv(file, col_types = cols()) %>%
    filter(!is.na(Ozone))
  return(df)
}

fit_model <- function(data) {
  m <- lm(Ozone ~ Temp, data) %>%
    coefficients()
  return(m)
}

plot_model <- function(model, data) {
  p <- ggplot(data, aes(x = Temp, y = Ozone))
  p <- p + geom_point()
  p <- p + geom_abline(intercept = model[1], slope = model[2])
  return(p)
}


# extra line for demo
  # p <- p + stat_smooth(method = "lm")