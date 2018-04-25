\name{mdat}
\alias{mdat}
\docType{data}
\title{
Simulated set of correlated variables
}
\description{
Simulated set of correlated variables. The code for the simulation is given in the details section.
}
\usage{data("mdat")}
\format{
  A data frame with 100 observations on the following 6 variables.
  \describe{
    \item{\code{y}}{a numeric vector}
    \item{\code{x1}}{a numeric vector}
    \item{\code{x2}}{a numeric vector}
    \item{\code{x3}}{a numeric vector}
    \item{\code{x4}}{a numeric vector}
    \item{\code{x5}}{a numeric vector}
  }
}
\details{
# data simulation
library(MASS)
Sigma <- matrix(c(1, -0.5, -0.8, -0.5, -0.9, 
                  -0.5, 1, 0.5, 0.3, 0.5,
                  -0.8, 0.5, 1, 0.2, 0.5,
                  -0.5, 0.3, 0.2, 1, 0.5,
                  -0.9, 0.5, 0.5, 0.5, 1), ncol=5, byrow=TRUE)
set.seed(242)                 
X <-mvrnorm(n = 100, mu=runif(5, -1,1), Sigma=Sigma)

b_true <- c(3, 1.3, -0.5, 0.9, -1.3, 0.4)
y_hat <- cbind(1, X)%*%b_true
y <- y_hat + rnorm(100)
dat <- data.frame(y=y, x1=X[,1], x2=X[,2], x3=X[,3], x4=X[,4], x5=X[,5])
# end of data simulation ---------------------------------------------------------------

}

\examples{
data(mdat)
}
\keyword{datasets}
