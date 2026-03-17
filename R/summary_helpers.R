#' Compute Basic Summary Statistics
#'
#' Returns a named numeric vector containing mean, median, and standard
#' deviation for a numeric input vector.
#'
#' @param x A numeric vector.
#'
#' @return A named numeric vector with `mean`, `median`, and `sd`.
#' @export
#'
#' @examples
#' summarize_numeric(c(1, 2, 3, 4, 5))
summarize_numeric <- function(x) {
  if (!is.numeric(x)) {
    stop("`x` must be numeric.", call. = FALSE)
  }

  c(
    mean = mean(x),
    median = stats::median(x),
    sd = stats::sd(x)
  )
}

#' Center and Scale a Numeric Vector
#'
#' Standardizes a numeric vector to z-scores.
#'
#' @param x A numeric vector.
#'
#' @return A numeric vector with mean approximately 0 and standard deviation 1.
#' @export
#'
#' @examples
#' zscore_numeric(c(10, 20, 30))
zscore_numeric <- function(x) {
  if (!is.numeric(x)) {
    stop("`x` must be numeric.", call. = FALSE)
  }

  as.numeric(scale(x))
}
