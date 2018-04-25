\name{historyplot}
\alias{historyplot}
\title{
Function to plot history (trace) plots of the Markov chains obtained by STAN or by WinBUGS.
}
\description{
Draws history (trace) plots for the Markov chains in a STAN- or WinBUGS-object
}
\usage{
historyplot(fit, parameter)
}

\arguments{
  \item{fit}{
 a model fit obtained by STAN or WinBUGS
}
  \item{parameter}{
  the name, a character, of the parameter for which the history plot should be drawn
}
}
\details{
 can only handly one or two dimensional parameters up to now.
}
\value{
gives a plot
}

\author{
Fraenzi Korner
}

\examples{

\dontrun{
fit <- stan(....)
historyplot(fit, parameter="alpha")
}
}
\keyword{ graphics}

