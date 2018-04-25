\name{survival_swallows}
\alias{survival_swallows}
\docType{data}
\title{
Telemetry data of Barn swallow fledglings
}
\description{
Capture-histories (obtained by radio-telemetry) of Barn swallows during their first 17 
days after fledging. To simplify the example (for didactical reasons), only the 
first broods were selected. 
}
\usage{data(survival_swallows)}
\format{
  The format is:
List of 8
 $ CH    : int [1:322, 1:18] 1 1 1 1 1 1 1 1 1 1 ...
capture histories of 322 individuals
 $ I     : int 322, number of individuals
 $ K     : int 18, capture occations (inclusive the first capture)
 $ carez : num [1:322], covariate, intensity of care by the parents
 $ year  : num [1:322] index of year (4 years study)
 $ agec  : num [1:18] covariate age of the fledglings, centered 
 $ family: num [1:322] index of the family (group the individuals belong to)
 $ nfam  : num 72, number of families
}
\details{
Day 0 is the day of marking the individuals. 
}
\source{
The data has been collected by Martin Grueebler and Beat Naef-Daenzer.  

Grueebler, M.U., Naef-Daenzer, B. 2008: Fitness consequences of pre- and post-fledging 
timing decicions in a double-brooded passerins. Ecology 89:2736-2745.

Grueebler, M.U., Naef-Daenzer, B. 2010: Survival benefits of post-fledging care: experimental 
approach to a critical part of avian reproductivve strategies. J. Anim. Ecol. 79:334-341.
}

\examples{
data(survival_swallows)

}
\keyword{datasets}
