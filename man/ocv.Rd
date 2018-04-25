\name{ocv}
\alias{ocv}

\title{
Ordinary cross validation score
}
\description{
Sum of squared differences between the out-of-data prediction and the observation
for the leave-one-out cross validation for linear models with normal error structure
(lm-objects)
}
\usage{
ocv(mod)
}
\arguments{
  \item{mod}{
an lm-object
}
}

\value{
the ordinary cross validation score
}
\references{
e.g. Wood, SN (2006) Generalized Additive Models, An Introduction with R. Chapman & Hall/CRC, London.

}
\author{
F. Korner
}

\examples{
data(pondfrog1)
mod1 <- lm(log(frog+1)~ph, data=pondfrog1)
mod2 <- lm(log(frog+1)~waterdepth, data=pondfrog1)
ocv(mod1)
ocv(mod2)
}


\keyword{model}

