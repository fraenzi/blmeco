\name{nightingales}
\alias{nightingales}
\docType{data}
\title{
Nightingale territory occupancy data
}
\description{
Territory occupancy data indicating whether a Nightingale (Luscinia megarhynchos) was observed (1; 0 otherwise) in a given territory, year and during a given visit.
}
\usage{data(nightingales)}
\format{
  Three-dimensian array containing 0 (i.e. not observed) and 1 (observed) with the three dimensions referring to\describe{
    \item{\code{1st dimension}}{the 1:55 territories}
    \item{\code{2nd dimension}}{the 1:10 study years}
    \item{\code{3rd dimension}}{the 1:8 visits}
  }
}
\source{
The data is provided by PD Dr. Valentin Amrhein.
}
\references{
Roth T; Amrhein V (2010) Estimating individual survival using territory occupancy data on unmarked animals. Journal of Applied Ecology 47: 386-392.
}
\examples{
data(nightingales)
}
\keyword{datasets}
