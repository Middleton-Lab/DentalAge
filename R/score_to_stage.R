#' Convert stage numeric score to character score
#'
#' @param x vector of numeric stage scores
#'
#' @return vector with numeric scores converted to character
#' @export
#'
#' @examples
#' data.frame(numeric_stage = 1:14, stage = score_to_stage(c(1:14)))
#'
score_to_stage <- function(x) {
  dplyr::case_when(
    x == 0 ~ NA_character_,
    x == 1 ~ "C.i",
    x == 2 ~ "C.co",
    x == 3 ~ "C.oc",
    x == 4 ~ "Cr.5",
    x == 5 ~ "Cr.75",
    x == 6 ~ "Cr.c",
    x == 7 ~ "R.i",
    x == 8 ~ "Cl.i",
    x == 9 ~ "R.25",
    x == 10 ~ "R.5",
    x == 11 ~ "R.75",
    x == 12 ~ "R.c",
    x == 13 ~ "A.5",
    x == 14 ~ NA_character_,
    is.na(x) ~ NA_character_
  )
}
