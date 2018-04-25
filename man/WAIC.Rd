\name{WAIC}
\alias{WAIC}
\title{
Watanabe-Akaike or widely applicable information criterion (WAIC)
}
\description{
WAIC is a more fully Bayesian approach for estimating the out-of-sample expectation based on the 
log pointwise posterior predictive density
}
\usage{
WAIC(mod, bsim = NA, nsim = 100)
}

\arguments{
  \item{mod}{
an object of class lm, glm or mer
}
  \item{bsim}{
an object of class simMer (optional), if provided computing time is reduced.
}
  \item{nsim}{
number of simulations used to describe the posterior distributions, if bsim is
provided, this number is taken from bsim.
}
}
\details{
We implemented the formulas given in Gelman et al. (2014) p 173. We hope that the 
implementation is correct!
For hierarchical (mixed) models, the function gives the WAIC that measures
predictive fit for the groups in the data (not for new groups). 
For hierarchical models the predictive fit could be measured for each level of the data.
But this flexibility is not yet implemented in the WAIC function.

}
\value{
 \item{lppd}{log pointwise posterior predictive density: the logarithms of
 the predictive density integrated over the posterior distribution of the model parameters
 summed over all observations.}
 \item{pwaic1}{an estimate for the number of effective parameters}
 \item{pwaic2}{a second estimate for the number of effective parameters}
 \item{WAIC1}{WAIC based on pwaic1}
 \item{WAIC2}{WAIC based on pwaic2}
}
\references{
Gelman, A., Carlin, J.B., Stern, H.S., Dunson, D.B., Vehtari, A. & Rubin, D.B. 
(2014) Bayesian Data Analysis, Third edn. CRC Press.

Watanabe, S. (2010) Applicable Information Criterion in Singular Learning Theory. 
Journal of Machine Learning Research, 11, 3571-3594.
}
\author{
F. Korner
}

\examples{
data(pondfrog1)
mod1 <- glm(frog ~ ph + waterdepth + temp, data=pondfrog1, family=poisson)
mod2 <- glm(frog ~    + waterdepth + temp, data=pondfrog1, family=poisson)
mod3 <- glm(frog ~ ph +            + temp, data=pondfrog1, family=poisson)
mod4 <- glm(frog ~ ph + waterdepth       , data=pondfrog1, family=poisson)
WAIC(mod1)
WAIC(mod2)
WAIC(mod3)
WAIC(mod4)

}

\keyword{model}

