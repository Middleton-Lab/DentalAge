#' Validate stage score
#'
#' @param x string stage score to check
#'
#' @return Boolean of the score's validity
#'
validate_score <- function(x) {
  valid <- TRUE
  valid_scores <- unique(AgeTables$Stage)
  if (!is.na(x)) { # Only check not NAs
    if (!(x %in% valid_scores)) {
      valid <- FALSE
    }
  }
  return(valid)
}
