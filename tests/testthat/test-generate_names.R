
test_that("generate_names returns a character vector of correct length", {
  result <- generate_names(5)
  expect_type(result, "character")
  expect_length(result, 5)
})

