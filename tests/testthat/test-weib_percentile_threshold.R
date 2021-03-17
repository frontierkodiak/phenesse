context("weib_percentile_threshold")

test_that("weib_percentile calculates a value that seems probable",{

  x <- rnorm(n = 30, mean = 150, sd = 10)
  expect_equal(weib_percentile_threshold(x, percentile = 0.5, iterations = 20),
               mean(x),
               tolerance = 7)

})

test_that("weib_percentile can handle missing value",{

  x <- c()
  expect_equal(weib_percentile_threshold(x, percentile = 0.5, iterations = 20),
               NA)

})
