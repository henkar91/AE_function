#' Example data
#'
#' A dataframe that contains dummy data in wide format for computing Attitudinal Equity
#'
#' @format A data frame with 10 rows and 11 variables:
#' \describe{
#'   \item{unit}{category}
#'   \item{satisfaction_0_10}{Satisfaction, scale 0 - 10}
#' }
#' 
"nps_df"


# Data
set.seed(654)
nps_df <- data.frame(unit = sample(c("Beer", "Wine", "Coffee"), 200, replace = TRUE),
                     satisfaction_0_10 = sample(0:10, 200, replace = TRUE))

