#' Estimate dental age
#'
#' Given a matrix of means and sds, estimate dental age following the method
#' decribed in Šešelj M, Sherwood RJ, Konigsberg LW. 2019. Timing of
#' Development of the Permanent Mandibular Dentition: New Reference Values
#' from the Fels Longitudinal Study. Anat Rec 302:1733–1753.
#'
#' @param means matrix (6 x 2) of means and standard deviations
#'
#' @return numeric vector with log estimated age, log total variance, and
#' estimated age
#' @export
#'
#' @examples
#' means <- get_means_for_scores(x = ExampleScores[1, ])
#' estimate_dental_age(means)
#'
estimate_dental_age <- function(means) {
  if (sum(is.na(means)) == 12) { # All teeth are NA
    age <- NA
    vv <- NA
    message("Warning: No age estimate")
  } else {
    m <- means$log_mu[!is.na(means$log_mu)]
    s <- means$log_sd[!is.na(means$log_sd)]

    if (length(m) == 1) message("Warning: Estimating from only 1 tooth.")

    # Convert to precision, calculate relative precision
    precision <- 1 / s^2
    total_precision <- sum(precision)
    rel_precision <- precision / total_precision

    # Weighted mean is the log_mu prediction
    age <- sum(m * rel_precision)

    # Total variance
    var_tot <- 1 / total_precision

    # Variance between teeth in age means
    var_between_tooth <- dplyr::if_else(is.na(var(m)), 0, var(m))

    # Total variance
    vv <- var_tot + var_between_tooth
  }
  return(c("log_age" = age,
           "log_total_var" = vv,
           "dental_age" = exp(age) / exp(vv)))
}

