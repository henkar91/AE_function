#' @title Reverse Scale
#' @name reverse_scale
#' @param x 
#' @return x
#' @description x 
#' @export

reverse_scale = function(x) {
    (max(x, na.rm=T) + 1) - x
}