\name{AICweights}
\alias{AICweights}

\title{
Calculates AICc-weights for each model of a set of models
}
\description{
Calculates AICc-weights for each model of a set of models
}
\usage{
AICweights(models)
}

\arguments{
  \item{models}{
a vector of characters with the model names
}
}
\details{
The AICc for small sample sizes is used (can also be applied for large samples)
}
\value{
a vector of model weights
}
\references{
Burnham, KP and Anderson DR (2002) Model selection and multimodel inference, a 
practical information-theoretic approach. Springer, New York
}
\author{
F. Korner
}
\note{
The function uses the function AICc from the package MuMIn.
}

\examples{
data(periparusater)
dat<-periparusater
# preparation of the data
dat$age[dat$age==0] <- NA  # replace 0 with NA
dat$age[dat$age==5] <- 4   # replace "after hatching year" with "non-hatching year"
dat$age <- factor(dat$age) # 3 = hatching year, 4 = non hatching year
dat$sex[dat$sex==0] <- NA  # replace 0 by missing values
dat$sex <- factor(dat$sex) # 1 = males, 2 = females
# retain only those data where sex and age is not missing
dat <- dat[complete.cases(dat$sex, dat$age),] 


mod1 <- lm(wing~sex+age, data=dat)
mod2 <- lm(wing~sex*age, data=dat)
AICweights(c("mod1", "mod2"))


}

\keyword{model}
\keyword{misc}
