\name{dispersion_glmer}
\alias{dispersion_glmer}

\title{
Measures dispersion in a glmer-model
}
\description{
Computes the square root of the penalized residual sum of squares divided by n, 
the number of observations. This quantity may be interpreted as the  
dispersion factor of a binomial and Poisson mixed model. It may be used to 
correct standard errors of the model coefficients. But note that this post-hoc
correction may be misleading because not all standard errors of the same model
might need to be corrected by the same factor if the extra variance is
explicitly included in the model structure (see e.g. Barry et al. 2003).  
}
\usage{
dispersion_glmer(modelglmer)
}

\arguments{
  \item{modelglmer}{
a model that has been fitted by glmer
}
}
\value{
the square root of the scale parameter, according to recommendations by D. Bates, 
if its value is between 0.75 and 1.4, there may not be an overdispersion
problem.

Such one number diagnostics should not be used as the only decision criterion. 
It can indicate overdispersion, but if it does not, it does not mean that the 
model fits the data well. Thorough residual analyses or posterior predictive model
checking is still needed!
}
\references{
This function has been posted on the R-helplist. It seems to have been written or 
motivated by D. Bates. 
Here is the URL, where we downloaded the function:
https://stat.ethz.ch/pipermail/r-sig-mixed-models/2011q1/015392.html

Barry SC, Brooks SP, Catchpole EA,  Morgan BJT (2003) The analysis of 
ring-recovery data using random effects. Biometrics 59:54-65.
}
\author{
she or he is unfortunately unknown to us
}

\examples{
\dontrun{
data(swallowfarms)
dat <- swallowfarms
dat$colsize.z <- scale(dat$colsize)   # scaled values for better model convergence
dat$dung.z    <- scale(dat$dung)
dat$die <- dat$clutch - dat$fledge
mod <- glmer(cbind(fledge,die) ~ colsize.z + cow + dung.z + (1|farm) , data=dat, family="binomial")
dispersion_glmer(mod)
}
}

\keyword{misc}
\keyword{model checking}
