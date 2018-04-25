\name{swallowfarms}
\alias{swallowfarms}
\docType{data}
\title{
Number of fledged Barn Swallows per nest
}
\description{
This is an adapted a data set from Grueebler et al. (2010) on Barn Swallow Hirundo rustica 
nestling survival (we have selected a non-random sample to be able to fit a simple model; 
hence, the results do not add unbiased knowledge about the swallow biology!). 
For 63 swallow broods we know the clutch size and the number of the nestlings 
that fledged. The broods came from 51 farms, thus some farms had more than one brood. 
There are three predictors measured at the level of the farm: 
colony size (the number of swallow broods on that farm), 
cow (whether there are cows on the farm or not), and dungheap 
(the number of dungheaps within 500 m of the farm). 
}
\usage{data(swallowfarms)}
\format{
  A data frame with 63 observations on the following 6 variables.
  \describe{
    \item{\code{farm}}{farm id}
    \item{\code{colsize}}{number of swallow broods on the farm}
    \item{\code{cow}}{indicator of cows on the farm}
    \item{\code{dung}}{number of dungheaps on the farm}
    \item{\code{clutch}}{clutch size}
    \item{\code{fledge}}{number of nestlings that survived to fledging}
  }
}

\references{
Grueebler MU, Korner-Nievergelt F, von Hirschheydt J (2010) The reproductive benefits
of livestock farming in barn swallows Hirundo rustica: quality of nest site or foraging habitat?
Journal of Applied Ecology 47:1340-1347
}
\examples{
data(swallowfarms)
}
\keyword{datasets}
