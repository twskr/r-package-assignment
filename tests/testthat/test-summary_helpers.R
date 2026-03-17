test_that("summarize_numeric returns expected summary values", {
  x <- c(1, 2, 3, 4, 5)
  out <- summarize_numeric(x)

  expect_named(out, c("mean", "median", "sd"))
  expect_equal(out[["mean"]], 3)
  expect_equal(out[["median"]], 3)
  expect_equal(out[["sd"]], sd(x))
})

test_that("zscore_numeric output is centered and scaled", {
  x <- c(2, 4, 6, 8)
  z <- zscore_numeric(x)

  expect_equal(mean(z), 0, tolerance = 1e-12)
  expect_equal(stats::sd(z), 1, tolerance = 1e-12)
})
