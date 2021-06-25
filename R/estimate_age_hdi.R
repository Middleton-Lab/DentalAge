#' Estimate HDI from dental age estimate
#'
#' @param age_est numeric vector output from \code{estimate_dental_age()}.
#' @param n numeric number of samples to produce. Defaults to 1e5 for speed.
#' Increase this number for investigating the tails of the distribution.
#' @param interval numeric width of the HD interval. Defaults to 0.5
#'
#' @return numeric vector with the upper and lower bounds of the interval
#' @export
#'
#' @examples
#' means <- get_means_for_scores(x = ExampleScores[1, ])
#' age_est <- estimate_dental_age(means)
#' estimate_age_hdi(age_est)
estimate_age_hdi <- function(age_est, n = 1e5, interval = 0.5) {
  if (is.na(age_est["log_age"])) {
    hdi_lo <- NA
    hdi_hi <- NA
  } else {
    log_age <- as.numeric(age_est["log_age"])
    log_total_var <- as.numeric(age_est["log_total_var"])
    samp <- rlnorm(n, log_age, sqrt(log_total_var))
    hdi_int <- HDInterval::hdi(samp, credMass = interval)
  }
  return(c("lower_bound" = as.numeric(hdi_int[1]),
           "upper_bound" = as.numeric(hdi_int[2])))
}
