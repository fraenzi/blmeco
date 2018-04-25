\name{crosspoint}
\alias{crosspoint}

\title{
Gives the x and y-coordinates of the cross point of two straight lines
}
\description{
Calculates the x and y-coordinates of the cross point of two srtaight lines based on their 
intercepts and slopes
}
\usage{
crosspoint(a1, b1, a2, b2)
}

\arguments{
  \item{a1}{
intercept of first line
}
  \item{b1}{
slope of first line
}
  \item{a2}{
intercept of second line
}
  \item{b2}{
slope of second line
}
}

\value{
a two column matrix with x- and y-coordinates of the cross point(s)
}

\author{
F. Korner
}
\examples{
crosspoint(4, -0.1, 3, 0.1)
}

\keyword{misc}