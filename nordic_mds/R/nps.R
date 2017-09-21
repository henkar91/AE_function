#' @title VarsToCases
#' @name nps
#' @param x a variable, NPS-question
#' @return NPS-score (Share of Promotors - Detractors)
#' @description Computes the NPS-score


# Function
nps <- function(x) {
    det <- length(x[x %in% c(0:6)]) / length(x)
    pro <- length(x[x %in% c(9:10)]) / length(x)
    return(pro * 100 - det * 100)
}

