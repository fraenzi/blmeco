\name{pondfrog1}
\alias{pondfrog1}
\docType{data}
\title{
Fake Data: Number of Frogs in Ponds
}
\description{
Simulated data of which the true model is known. Can be used to play with model selection.
This is a simplified version of the pondfrog -example (see pondfrog)
}
\usage{data(pondfrog1)}
\format{
  A data frame with 130 observations on the following 4 variables.
  \describe{
    \item{\code{frog}}{a numeric vector}
    \item{\code{ph}}{a numeric vector}
    \item{\code{waterdepth}}{a numeric vector}
    \item{\code{temp}}{a numeric vector}
  }
}
\details{
The code used to simulate the data was:
set.seed(333)
frog.mu <- exp(3.5 + 0.2*(temp-mean(temp))+0.1*(ph-mean(ph)) - 
                 0.3*(waterdepth-mean(waterdepth)) )
frog <- rpois(n, lambda=frog.mu)

For the simulation of the explanatory variables, see help file for the pondfrog data
}

\examples{
data(pondfrog1)
pairs(pondfrog1)
}
\keyword{datasets}
