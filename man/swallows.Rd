\name{swallows}
\alias{swallows}
\docType{data}
\title{
Data set with number of nesting swallows per barn
}
\description{
Number of barn swallows and house martins nesting per barn with some characteristics of the barn.
}
\usage{data(swallows)}
\format{
  A data frame with 27 observations on the following 6 variables.
  \describe{
    \item{\code{farm}}{indicator of the farm}
    \item{\code{nhirrus}}{number of active barn swallow nests}
    \item{\code{ndelurb}}{number of active house martin nests}
    \item{\code{ncows}}{number of cows in the barn}
    \item{\code{nesting_aid}}{a factor with levels \code{artif_nest}=artificial nests were put up,
     \code{both} both artificial nests and supporting material has been provided, \code{none} nothing has been done
     to support swallow nesting, \code{support} supporting material has been provided}
    \item{\code{ndaysempty}}{number of days the barn was empty, i.e. the cows have been on the meadow.}
  }
}
\references{
Willi T, Korner-Nievergelt F, Grueebler MU (2011) Rauchschwalben Hirundo rustica
brauchen Nutztiere, Mehlschwalben Delichon urbicum Nisthilfen. Der Ornithologische
Beobachter 108: 215-224
}
\examples{
data(swallows)

}
\keyword{datasets}
