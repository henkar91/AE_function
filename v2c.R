v2c <- function(data, id, relevance_root_q, closeness_root_q){
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

# v2c(df, "respid", "q1", "q2")
