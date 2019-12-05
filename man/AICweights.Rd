\name{AICweights}
\alias{AICweights}

\title{
Calculates AIC-weights from a vector of AIC values
}
\description{
Calculates AIC-weights from a vector of AIC values
}
\usage{
AICweights(AIC_values)
}

\arguments{
  \item{AIC_values}{
a vector of AIC values of models fitted to the same data set
}
}

\value{
a vector of model weights
}
\references{
Burnham, KP and Anderson DR (2002) Model selection and multimodel inference, a 
practical information-theoretic approach. Springer, New York
}
\author{
F. Korner
}
\note{
The function uses the function AICc from the package MuMIn.
}

\examples{

AICweights(c(325, 322, 330))


}

\keyword{model}
\keyword{misc}
