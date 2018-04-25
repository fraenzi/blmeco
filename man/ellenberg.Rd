\name{ellenberg}
\alias{ellenberg}
\docType{data}
\title{
Hohenheim groundwater table experiment of Heinz Ellenberg
}
\description{
Heinz Ellenberg's historically important work on changes in the abundances of a community of grass species growing along
experimental gradients of water table depth has played an important role in helping to identify the hydrological niches of
plant species in wet meadows. The dataset comprises measurements taken from two similar experiments conducted in 1952 and 1953. 
}
\usage{data(ellenberg)}
\format{
  A data frame with 264 observations on the following 29 variables.
  \describe{
    \item{\code{Year}}{two levels: 1952 and 1953}
    \item{\code{Soil}}{two levels: Loam and Sand}
    \item{\code{Water}}{Average distance to groundwater in cm, 10 levels for 1952, 11 levels for 1953: 
    (-5), 5, 20, 35, 50, 65, 80, 95, 110, 125, 140}
    \item{\code{Species}}{6 species in 1952 and 4 species in 1953. Species 1952: Poa palustris, 
    Festuca pratensis, Alopecurus pratensis, Dactylis glomerata, Arrhenatherum elatius, Bromus erectus. 
    Species 1953: Alopecurus pratensis, Dactylis glomerata, Arrhenatherum elatius, Bromus erectus.}
    \item{\code{Mi.g}}{Individual yield of dried biomass in g in monocultures}
    \item{\code{Yi.g}}{Individual yield of dried biomass in g in mixtures}
    \item{\code{Mono.area.m2}}{Area of the yields in monocultures, 0.383 m in year 1952, 0.5 m in year 1953}
    \item{\code{Mix.area.m2}}{Area of the yields in mixtures, 1.2 m in year 1952, 1.5 m in year 1953}
    \item{\code{Div}}{Species richness, 6 in year 1952, 4 in year 1953}
    \item{\code{Moi.g.m2}}{Individual monoculture yields in m2}
    \item{\code{Yoi.g.m2}}{Individual mixture yields in m2}
    \item{\code{Mo.g.m2}}{Moi.g.m2 averaged over species by year, soil type and water level}
    \item{\code{Yo.g.m2}}{Yoi.g.m2 summed over species by year, soil type and water level}
    \item{\code{RYoi}}{Individual relative yield observed (Yoi.g.m2/ Moi.g.m2)}
    \item{\code{RYo}}{RYoi summed over species by year, soil type and water level}
    \item{\code{Yei.g.m2}}{Individual expected yield in m2 (Moi.g.m2 * RYe)}
    \item{\code{Ye.g.m2}}{Yei.g.m2 summed over species by year, soil type and water level }
    \item{\code{RRYo}}{Rescaled relative yield observed (RYoi/RYo)}
    \item{\code{deltaRYoi}}{Difference between relative observed yield and rescaled relative observed yield (RYoi - RRYo)}
    \item{\code{deltaRYo}}{deltaRYoi summed over species by year, soil type and water level }
    \item{\code{RYe}}{Relative yield expected in mixtures (1/Div)}
    \item{\code{deltaRYe}}{Difference between the rescaled relative yield observed and relative yield expected (RRYo- RYe)}
    \item{\code{RYT}}{Relative yield total summed over species by year, soil type and water level}
    \item{\code{level}}{two levels: species and community}
    \item{\code{NE}}{Net Effect (Yo.g.m2 - Ye.g.m2)}
    \item{\code{TICE}}{Trait-Independent Complementarity Effect (Mo.g.m2 * deltaRYo * Div)}
    \item{\code{SE}}{Selection Effect (NE - TICE)}
    \item{\code{TDCE}}{Trait-Dependent Complementarity Effect ((Moi.g.m2 - Mo.g.m2) * (deltaRYoi - deltaRYo) summed over species by year, soil type and water level)}
    \item{\code{DE}}{Diversity effect (SE - TDCE)}
  }
}
\details{
A detailed description of the data set can be found in the methods section of Hector et al. (2012).
}
\source{
http://www.plosone.org/article/info\%3Adoi\%2F10.1371\%2Fjournal.pone.0043358
}

\references{
Ellenberg H (1953) Physiologisches und oekologisches Verhalten derselben
Pflanzenarten. Berichte der Deutschen Botanischen Gesellschaft 65: 350-361

Ellenberg H (1954) Ueber einige Fortschritte der kausalen Vegetationskunde. Plant Ecology 5/6: 199-211.

Lieth H, Ellenberg H (1958) Konkurrenz und Zuwanderung von Wiesenpflanzen. Ein Beitrag zum Problem der Entwicklung neu 
angelegten Gruenlands. Zeitschrift fuer Acker- und Pflanzenbau 106: 205-223.

Hector A, von Felten S, Hautier Y, Weilenmann M and Bruelheide H (2012) Effects
of Dominance and Diversity on Productivity along Ellenberg's Experimental Water Table Gradients. PlosOne 7: e43358
}
\examples{
data(ellenberg)

}
\keyword{datasets}
