#' Example data
#'
#' A dataframe that contains dummy data in wide format for computing Attitudinal Equity
#'
#' @format A data frame with 10 rows and 11 variables:
#' \describe{
#'   \item{respid}{id}
#'   \item{q1_1}{Relevance Brand 1}
#'   \item{q1_2}{Relevance Brand 2}
#'   \item{q1_3}{Relevance Brand 3}
#'   \item{q1_4}{Relevance Brand 4}
#'   \item{q1_5}{Relevance Brand 5}
#'   \item{q2_1}{Closeness Brand 1}
#'   \item{q2_2}{Closeness Brand 2}
#'   \item{q2_3}{Closeness Brand 3}
#'   \item{q2_4}{Closeness Brand 4}
#'   \item{q2_5}{Closeness Brand 5}
#' }
#' 
"df"

df <- data.frame(respid = 1:10,
             q1_1 = c(1, 3  ,3,  4,  5,  NA,  7,  8,  9,  NA),
             q1_2 = c(1, 2  ,4,  4,  5,  NA,  4,  8,  9,  NA),
             q1_3 = c(7, NA ,3,  5,  5,  NA,  7,  8,  NA, NA),
             q1_4 = c(8, NA ,NA, NA, NA, NA,  NA, NA, NA, 5 ),
             q1_5 = c(8, NA ,NA, NA, NA, NA,  NA, NA, 6,  7 ),
             q2_1 = c(3, 2,  3,  4,  5,  NA,  7,  8,  9,  NA),
             q2_2 = c(1, 2,  3,  4,  5,  NA,  5,  8,  9,  NA),
             q2_3 = c(9, NA, 5,  6,  5,  NA,  7,  3,  NA, NA),
             q2_4 = c(8, NA, NA, NA, NA, NA,  NA, NA, NA, 4 ),
             q2_5 = c(7, NA, NA, NA, NA, NA,  NA, NA, 5,  9 ))
