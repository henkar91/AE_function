#' @title VarsToCases
#' @name v2c
#' @param data A data frame.
#' @param id name of id variable, within "".
#' @param relevance_root_q question root for relevance variables, format questionroot_brandid, within "".
#' @param closeness_root_q question root for closeness variables, format questionroot_brandid, within "".
#' @return Returns transposed data frame (long format).
#' @description Function is intended to work as SPSSs VarsToCases


v2c <-
function(data, id, relevance_root_q, closeness_root_q){
    stopifnot(is.character(id),
              is.character(relevance_root_q),
              is.character(closeness_root_q))
    
    rel <- data %>%
        select(id, starts_with(relevance_root_q)) %>%
        gather(variable, value, -respid, na.rm = TRUE) %>%
        separate(variable, into = c("question", "brand_id"), 
                 sep = "_", remove = T) %>% 
        select(-question, relevance = value)
    
    clo <- data %>%
        select(id, starts_with(closeness_root_q)) %>%
        gather(variable, value, -respid, na.rm = TRUE) %>%
        separate(variable, into = c("question", "brand_id"), 
                 sep = "_", remove = T) %>% 
        select(-question, closeness = value)
    
    ae <- left_join(rel, clo, by = c(id, "brand_id"))
    
    return(ae)
}
