\name{nordicmds-package}
\alias{nordicmds-package}
\alias{nordicmds}
\docType{package}
\title{
\packageTitle{nordicmds}
}
\description{
\packageDescription{nordicmds}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{nordicmds}
\packageIndices{nordicmds}
~~ An overview of how to use the package, including the most important functions ~~
}
\author{
\packageAuthor{nordicmds}

Maintainer: \packageMaintainer{nordicmds}
}
\references{
-
}

\keyword{ package }
\seealso{
\url{https://www.researchgate.net/publication/252568552_A_new_measure_of_brand_attitudinal_equity_based_on_the_Zipf_distribution}

}
\examples{
# varstocases
v2c(df, "respid", "q1", "q2")

# ae
ae(data = a, id = "respid", "relevance", "closeness")

# nps
nps_df %>% 
    group_by(unit) %>% 
    summarise(nps = nps(satisfaction_0_10))

}
