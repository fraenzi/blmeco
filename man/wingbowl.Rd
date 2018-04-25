\name{wingbowl}
\alias{wingbowl}
\docType{data}
\title{
Growth rate data of Barn owl nestlings and corticosterone
}
\description{
The data contains wing length measurements of Barn owl nestlings that were either
treated with a corticosterone or a placebo implant.
}
\usage{data(wingbowl)}
\format{
  A data frame with 209 observations on the following 7 variables.
  \describe{
    \item{\code{Brood}}{brood id}
    \item{\code{Ring}}{individual id}
    \item{\code{Age1}}{age of the individual at the day it received the implant, in days}
    \item{\code{Implant}}{type of implant: C = corticosterone, P = placebo}
    \item{\code{days}}{number of days after the implant}
    \item{\code{Age}}{age of the nestling at the day of the wing length measurement, in days}
    \item{\code{Wing}}{wing length measurement in mm}
  }
}
\references{
AlmaisB, Roulin A, Korner-Nievergelt F, Jenni-Eiermann S, Jenni L (2012) Coloration
signals the ability to cope with elevated stress hormones: effects of corticosterone on growth of barn owls
are associated with melanism. JOurnal of Evolutionary Biology 25: 1189-1199
}
\examples{
data(wingbowl)
}
\keyword{datasets}
