\name{cortbowl}
\alias{cortbowl}
\docType{data}
\title{
stress hormone data of nestling barn owls which were either treated with a 
corticosterone-implant or with a placebo-implant as control
}
\description{
The aim of the study was to look at the corticosterone increase due to the corticosterone 
implants. In each brood one or two nestlings were implanted with a corticosterone-implant 
and one or two nestlings with a placebo-implant (variable Implant). Blood samples were 
taken just before implantation (day 1), 2 and 20 days after implantation. 
In total we have 287 measurements of 151 individuals (variable Ring) of 54 broods. 
}
\usage{data(cortbowl)}
\format{
  A data frame with 287 observations on the following 6 variables.
  \describe{
    \item{\code{Brood}}{id of brood}
    \item{\code{Ring}}{id of individual}
    \item{\code{Implant}}{a factor with levels \code{C} \code{P}; treatment: C=corticosterone treatment, P=placebo}
    \item{\code{Age}}{age of nestling in days}
    \item{\code{days}}{the day of the blood sample}
    \item{\code{totCort}}{corticosterole measurement in the blood sample}
  }
}
\references{
Almasi, B., Roulin, A., Jenni-Eiermann, S., Breuner, C.W., Jenni, L., 2009. 
Regulation of free corticosterone and CBG capacity under different environmental 
conditions in altricial nestlings. Gen. Comp. Endocr. 164, 117-124.
}
\examples{
data(cortbowl)

}
\keyword{datasets}
