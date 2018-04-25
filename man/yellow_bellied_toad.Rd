\name{yellow_bellied_toad}
\alias{yellow_bellied_toad}
\docType{data}
\title{
Site-occupancy data for Yellow-bellied toads
}
\description{
Site-occupancy data indicating whether Yellow-bellied toads (Bombina variegata) were observed (1; 0 otherwise) in a given site and during a given visit.
}
\usage{data(yellow_bellied_toad)}
\format{
  List with 2 items
  \describe{
    \item{\code{y}}{Two-dimensional matrix with the observed absence (0) or presence (1) of Yellow-bellied toads for a given territory (rows) and visit (columns).}
    \item{\code{DAY}}{integer vector containing the day of the year for each observation.}
  }
}
\source{
The data is provided by Isabelle Floess, Landschaft und Gewaesser, Kanton Aargau.
}
\examples{
data(yellow_bellied_toad)
}
\keyword{datasets}
