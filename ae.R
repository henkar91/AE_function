
data <- t_df
id <- "respid"
ae <- function(data, id, relevance, closeness){
    print(data)
    print(data$id)
    
    data <- data %>%
        select(id, relevance, closeness) %>%
        mutate(avg_brand_score = (relevance + closeness)/2) %>%   # Compute average brand score
        group_by(id) %>%                                          # Group data per respondent
        mutate(rank = rank(-avg_brand_score),                     # Rank avg brand score for each respondent
               step1 = 1/rank^1.35,                               # Compute numerator
               step2 = sum(step1),                                # Compute denominator  
               ae = step1/step2 * 100)
}

ae(data = t_df, respid, relevance, closeness)

select(t_df, respid)
