\name{triplot.normal.knownvariance}
\alias{triplot.normal.knownvariance}
\title{
Draw prior, data and posterior for a known variance normal distribution example
}
\description{
The function draws a normal prior distribution, the data and the posterior distribution in one plot. 
It serves as a tool to explore the influence of different prior on a hypotehtical set of normally distributed data
}
\usage{
triplot.normal.knownvariance(theta.data, variance.known, n, prior.theta, prior.variance, 
legend = TRUE, ylim = c(0, max(yposterior)), legend.bty="n")
}
\arguments{
  \item{theta.data}{
mean of the data
}
  \item{variance.known}{
known variance
}
  \item{n}{
sample size
}
  \item{prior.theta}{
mean of the prior distribution
}
  \item{prior.variance}{
variance of the prior distribution
}
  \item{legend}{
logical, if TRUE (default) a legend is drawn 
}
  \item{ylim}{
ylim of the plot
}
  \item{legend.bty}{
box type of legend
}
}
\references{
Gelman, A., J. B. Carlin, H. S. Stern and D. B. Rubin (2004). Bayesian Data Analysis. New York, Chapman & Hall/CRC.
}
\author{
Fraenzi Korner-Nievergelt
}

\seealso{
\code{\link{dnorm}}
}
\examples{
triplot.normal.knownvariance(theta.data=10, n=20, variance.known=5, 
   prior.theta=0, prior.variance=100) 
}
\keyword{ ~posterior }
\keyword{ ~misc }
