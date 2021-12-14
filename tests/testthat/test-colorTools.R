
## colorVectorPotline contains at least 2 colors
testthat::test_that("colorVectorPotline contains at least 2 colors", {
  testthat::expect_gte(length(colorVectorPotline), 2)
})

## interpolatePalette function: tests that defaut palette exists
testthat::test_that("Default palette for interpolation exists", {
  testthat::expect_equal(names(potlinePalettes["redBeigeGrey"]), "redBeigeGrey")
})
