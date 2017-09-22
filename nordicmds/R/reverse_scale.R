#' @title Reverse Scale
#' @name reverse_scale
#' @param high The maximum expected value of the scale  
#' @return Returns reversed input
#' @description function to reverse numbers in a discrete scale, given input of highest expected value. 
#' @export
#' @examples
#' # Reverse vector as if it were a scale of 1 through 7
#' reverse_scale(c(1,2,3,5,4,NA), high = 7)

reverse_scale = function(x, high) {
    stopifnot(is.numeric(x))
    if(max(x, na.rm = TRUE) > high) 
        stop("Error: There are values larger than 'high'")
    high + 1 - x
}