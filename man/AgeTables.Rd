% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{AgeTables}
\alias{AgeTables}
\title{Table of means and standard deviations for dental stages}
\format{
A tibble with 150 rows and 5 variables:
\describe{
\item{Sex}{character of sex: "F" or "M"}
\item{Tooth}{character ID of tooth}
\item{Stage}{character for tooth stage}
\item{log_mu}{numeric log mean for sex/tooth/stage}
\item{log_sd}{numeric log sd for sex/tooth/stage}
}
}
\source{
Šešelj M, Sherwood RJ, Konigsberg LW. 2019. Timing of Development of
the Permanent Mandibular Dentition: New Reference Values from the Fels
Longitudinal Study. Anat Rec 302:1733–1753.
}
\usage{
AgeTables
}
\description{
A dataset containing the lookup table for dental ages from Šešelj et al.
(2019).
}
\keyword{datasets}
