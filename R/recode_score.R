#' Recode scores
#'
#' @param x string stage coding to correct
#'
#' @return string of recoded stage score
#'
#' @export
#'
#' @examples
#' recode_score("zero")
#' recode_score("Ci")
#'
recode_score <- function(x) {
  dplyr::case_when(
    x == "zero" ~ NA_character_,
    x == "Ci" ~ "C.i",
    x == "ci" ~ "C.i",
    x == "Cco" ~ "C.co",
    x == "Coc" ~ "C.oc",
    x == "Cr 1/2" ~ "Cr.5",
    x == "Cr 3/4" ~ "Cr.75",
    x == "Crc" ~ "Cr.c",
    x == "Ri" ~ "R.i",
    x == "Cli" ~ "Cl.i",
    x == "R 1/4" ~ "R.25",
    x == "R 1/2" ~ "R.5",
    x == "R 3/4" ~ "R.75",
    x == "Rc" ~ "R.c",
    x == "A 1/2" ~ "A.5",
    x == "Ac" ~ NA_character_,
    TRUE ~ x
  )
}
