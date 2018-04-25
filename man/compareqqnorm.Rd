\name{compareqqnorm}
\alias{compareqqnorm}

\title{
Produces QQ-plots of model residuals and of random normal samples
}
\description{
The function produces 9 QQ-Plots. One is for the residuals of a model.
8 of them are for a simulated sample of equal size as the first one but simulated from a normal distribution using rnorm.
The QQ-plot for the residuals is placed at a random place within the 9 plots. If you immediately can 
find the QQ-Plot of the residuals, these may not be normally distributed.
The place of residuals is printed to the R-console.
}
\usage{
compareqqnorm(mod)
}
\arguments{
  \item{mod}{a linear model (an lm-object or any other object of which resid(mod) 
  gives a numeric vector of numbers) 
}
}

\value{
a plot is produced and a number if given which indicates the position of the 
residuals (1-3 corresponds to the first row, 4-6 to the second row and
7-9 to the third row)
}

\author{
F. Korner
}


\examples{
 y <- rexp(50)
 mod <- lm(y~1)
 compareqqnorm(mod)
 
}

\keyword{misc}
