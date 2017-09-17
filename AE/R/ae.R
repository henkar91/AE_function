#' @title Attitudinal Equity
#' @name ae
#' @param data A data frame.
#' @param id name of id variable, within "".
#' @param relevance transposed relevance variable, within "".
#' @param closeness transposed closeness variable, within "".
#' @return Returns data frame added with avg brand score and Attitudinal Equity.
#' @description Function computes the avg brand score and Attitudinal Equity. Data should be structured in long format.
#' @references \url{https://www.researchgate.net/publication/252568552_A_new_measure_of_brand_attitudinal_equity_based_on_the_Zipf_distribution}

ae <-
function(data, id, relevance, closeness){
    # stopifnot(is.data.frame(data),
    #           is.numeric(relevance),
    #           is.numeric(closeness))
    
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


# Who will see this comment?
