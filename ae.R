
ae <- function(data, id, relevance, closeness){
    stopifnot(is.data.frame(data),
              is.numeric(relevance),
              is.numeric(closeness))
    
    data <- data %>%
        select(id2 = id, relevance, closeness) %>%
        mutate(avg_brand_score = (relevance + closeness)/2) %>%   # Compute average brand score
        group_by(id2) %>%                                         # Group data per respondent
        mutate(rank = rank(-avg_brand_score),                     # Rank avg brand score for each respondent
               step1 = 1/rank^1.35,                               # Compute numerator
               step2 = sum(step1),                                # Compute denominator  
               ae = step1/step2 * 100) %>%
        select(id = id2, relevance, closeness, avg_brand_score, ae)
    
    return(data)
}

# ae(t_df, "respid", "relevance", "closeness")


