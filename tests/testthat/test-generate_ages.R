
test_that("generate_ages returns numeric vector of expected range", {
  result <- generate_ages(5, 20, 40)
  expect_type(result, "integer")
  expect_length(result, 5)
  expect_true(all(result >= 20 & result <= 40))
})

