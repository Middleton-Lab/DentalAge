#' Example dental scores
#'
#' A dataset containing five example dental scores for use in calculating
#' dental age.
#'
#' @format A data frame with 5 rows and 8 variables:
#' \describe{
#'   \item{ID}{individual ID}
#'   \item{Sex}{character of sex: "F" or "M"}
#'   \item{Canine}{character score for canine}
#'   \item{P3}{character score for P3}
#'   \item{P4}{character score for P4}
#'   \item{M1}{character score for M1}
#'   \item{M2}{character score for M2}
#'   \item{M3}{character score for M3}
#' }
#'
"ExampleScores"

#' Table of means and standard deviations for dental stages
#'
#' A dataset containing the lookup table for dental ages from Šešelj et al.
#' (2019).
#'
#' @format A tibble with 150 rows and 5 variables:
#' \describe{
#'   \item{Sex}{character of sex: "F" or "M"}
#'   \item{Tooth}{character ID of tooth}
#'   \item{Stage}{character for tooth stage}
#'   \item{log_mu}{numeric log mean for sex/tooth/stage}
#'   \item{log_sd}{numeric log sd for sex/tooth/stage}
#' }
#'
#' @source Šešelj M, Sherwood RJ, Konigsberg LW. 2019. Timing of Development of
#' the Permanent Mandibular Dentition: New Reference Values from the Fels
#' Longitudinal Study. Anat Rec 302:1733–1753.
#'
"AgeTables"
