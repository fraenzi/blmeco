\name{pondfrog}
\alias{pondfrog}
\docType{data}
\title{
Fake Data of the Numbers of Frogs in Ponds
}
\description{
The data contain frog population sizes in different ponds with some characteristics of ponds. 
The data is simulated, thus the "true" model is known. The data can serve to play with 
different methods for doing model selection.
}
\usage{data(pondfrog)}
\format{
  A data frame with 130 observations on the following 9 variables.
  \describe{
    \item{\code{frog}}{a numeric vector}
    \item{\code{fish}}{a numeric vector}
    \item{\code{vegdensity}}{a numeric vector}
    \item{\code{ph}}{a numeric vector}
    \item{\code{surfacearea}}{a numeric vector}
    \item{\code{waterdepth}}{a numeric vector}
    \item{\code{region}}{a factor with levels \code{north} \code{south}}
    \item{\code{height}}{a numeric vector}
    \item{\code{temp}}{a numeric vector}
  }
}
\details{
The r-code for producing the pondfrog data is 


set.seed(196453)
n <- 130   # sample size
height <- sample(150:1500,n)
region <- sample(c("south", "north"), n,  replace=TRUE, prob=c(0.2, 0.8))
waterdepth <- sample(seq(0.3, 5.5, by=0.01), n)
surfacearea <- sample(seq(3, 150), n)
temp <- 20 - 0.01*height + 0.5*as.numeric(region=="south") -0.005*waterdepth + 0.1*sqrt(surfacearea) +rnorm(n, 0, 1.5)
ph <-  7.5 - 0.8 * as.numeric(region=="south") + rnorm(n, 0, 0.2)
vegdensity.logitp <- -3.5+0.3*ph + 0.2*temp+rnorm(n,0,1)
vegdensity.p <- plogis(vegdensity.logitp)
vegdensity <- rbinom(n, 1, prob=vegdensity.p)
fish.logitp <- -4+0.3*ph + 0.2*waterdepth+rnorm(n,0,1)
fish.p <- plogis(fish.logitp)
fish <- rbinom(n, 1, prob=fish.p)
frog.mu <- exp(3.5 + 0.2*(temp-mean(temp)) +0.2*(ph-mean(ph)) + 0.1*(ph-mean(ph))^2 - 
                 0.3*(waterdepth-mean(waterdepth)) - 0.5 * fish + 0.5*fish*vegdensity)
frog <- rpois(n, lambda=frog.mu)

dat <- data.frame(frog=frog, fish=fish, vegdensity=vegdensity, ph=ph, surfacearea=surfacearea,
  waterdepth=waterdepth, region=region, height=height, temp=temp)

Thus, the "true" model for the number of pondfrog (frog) is a Poisson model
with log-link function and the following linear predictor:

3.5 + 0.2*(temp-mean(temp)) +0.2*(ph-mean(ph)) + 0.1*(ph-mean(ph))^2 - 
                 0.3*(waterdepth-mean(waterdepth)) - 0.5 * fish + 0.5*fish*vegdensity
                 
}


\examples{
data(pondfrog)
pairs(pondfrog)
}
\keyword{datasets}
