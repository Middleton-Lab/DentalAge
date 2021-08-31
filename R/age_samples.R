#' Generate sample for age estimate
#'
#' @param age_est Result of call to estimate_dental_age()
#' @param n Number of samples
#'
#' @return n samples
#'
#' @export
#'
age_samples <- function(age_est, n) {
  log_age <- as.numeric(age_est["log_age"])
  log_total_var <- as.numeric(age_est["log_total_var"])
  samp <- rlnorm(n, log_age, sqrt(log_total_var))
  return(samp)
}
