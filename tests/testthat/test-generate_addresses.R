
test_that("generate_addresses returns character vector", {
  result <- generate_addresses(5)
  expect_type(result, "character")
  expect_length(result, 5)
})

