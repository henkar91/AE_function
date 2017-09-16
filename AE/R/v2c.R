#' @title VarsToCases
#' @name v2c
#' @param data A data frame.
#' @param id name of id variable, within "".
#' @param relevance_root_q relevance question root, separated with _ followed by brand_id, within "".
#' @param closeness_root_q relevance question root, separated with _ followed by brand_id, within "".
#' @return Returns transposed data frame.
#' @description Function works similar like SPSSs VarsToCases. The function selects id, all relevance and closeness questions and transpose them only. Purpose of function is to prepare data for AE function.

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
    print(rel)
    
    clo <- data %>%
        select(id, starts_with(closeness_root_q)) %>%
        gather(variable, value, -respid, na.rm = TRUE) %>%
        separate(variable, into = c("question", "brand_id"), 
                 sep = "_", remove = T) %>% 
        select(-question, closeness = value)
    print(clo)
    
    ae <- left_join(rel, clo, by = c(id, "brand_id"))
    
    return(ae)
}
