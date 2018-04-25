\name{spermdepletion}
\alias{spermdepletion}
\docType{data}
\title{
Sperm depletion data in a hermaphrodite sea slug
}
\description{
Data of experiment 1 in Anthes et al. (2014) to measure the depletion rate of sperms in a hermaphrodite sea slug. 
}
\usage{data(spermdepletion)}
\format{
  A data frame with 264 observations on the following 6 variables.
  \describe{
    \item{\code{donor}}{the id of the focal sperm donor}
    \item{\code{matingN}}{the number of the mating in the sequences of matings}
    \item{\code{totalsperm}}{number of sperms transferred to the receiver}
    \item{\code{MeanPairSize}}{mean of the weight of the two slugs of the pair}
    \item{\code{RelativeDonorSize}}{a relative size measurement of the donor, see Anthes et al. (2014)}
    \item{\code{Dec_duration}}{duration of mating in decimal minutes}
  }
}
\references{
Anthes N, Werminghausen J, Lange R (2014) Large donors transfer more sperm, but 
depletion is faster in a promiscuous hermaphrodite. Behavioural Ecology and 
Sociobiology 68: 477-483.
}
\examples{
data(spermdepletion)
}
\keyword{datasets}
