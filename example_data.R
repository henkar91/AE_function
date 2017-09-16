# Sample data

df <- tibble(respid = 1:10,
             q1_1 = c(1, 3  ,3,  4,  5,  NA,  7,  8,  9,  NA),
             q1_2 = c(1, 2  ,4,  4,  5,  NA,  4,  8,  9,  NA),
             q1_3 = c(7, NA ,3,  5,  5,  NA,  7,  8,  NA, NA),
             q1_4 = c(8, NA ,NA, NA, NA, NA,  NA, NA, NA, 5 ),
             q1_5 = c(8, NA ,NA, NA, NA, NA,  NA, NA, 6,  7 ),
             q2_1 = c(3, 2,  3,  4,  5,  NA,  7,  8,  9,  NA),
             q2_2 = c(1, 2,  3,  4,  5,  NA,  5,  8,  9,  NA),
             q2_3 = c(9, NA, 5,  6,  5,  NA,  7,  3,  NA, NA),
             q2_4 = c(8, NA, NA, NA, NA, NA,  NA, NA, NA, 4 ),
             q2_5 = c(7, NA, NA, NA, NA, NA,  NA, NA, 5,  9 ))