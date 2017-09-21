#' @title Scale Reverse
#' @name reverse_scale
#' @param x 
#' @return 
#' @description 

reverse_scale = function(x) {
    (max(x, na.rm=T) + 1) - x
}