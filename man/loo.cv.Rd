\name{loo.cv}
\alias{loo.cv}
\title{
Bayesian leave-one-out cross-validation
}
\description{
Bayesian leave-one-out cross-validation based on the log pointwise predictive density
}
\usage{
loo.cv(mod, nsim = 100, bias.corr = FALSE)
}
\arguments{
  \item{mod}{
an object obtained by the functions lm or glm
}
  \item{nsim}{
number of Monte Carlo simulations used to describe the posterior distributions.
Computing time is large!
}
  \item{bias.corr}{
The leave-one-out cross-validation underestimates predictive fit because each prediction
 is conditioned n-1 data points. For large n this bias is negligible.
 For small n, a bias correction is recommended.
 
}
}
\details{
For details see Gelman et al. (2014) p 175
}
\value{
  \item{LOO.CV}{leave-one-out cross-validation estimate of out-of-sample predictive fit, 
   (log pointwise predictive density)}
  \item{bias.corrected.LOO.CV}{bias corrected leave-one-out cross-validation estimate of out-of-sample predictive fit, 
   (log pointwise predictive density)}
  \item{minus2times_lppd}{-2*LOO.CV, transformed LOO.CV to scale of deviance}
  \item{est.peff}{estimate for the number of effective parameters}
}
\references{
Gelman A, Carlin JB, Stern HS, Dunson DB, Vehtari A and Rubin DB (2014) 
Bayesian Data Analysis, Third edn. CRC Press.
}
\author{
F. Korner
}

\seealso{
 \code{\link{ocv}}
}
\examples{
\dontrun{
x <- runif(20)
y <- 2+0.5*x+rnorm(20, 0, 1)
mod <- lm(y~x)
loo.cv(mod, bias.corr=TRUE)  # increase nsim!!
  }
  }
\keyword{model}
