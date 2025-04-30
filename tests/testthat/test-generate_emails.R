
test_that("generate_emails returns correct length and valid format", {
  result <- generate_emails(5)
  expect_type(result, "character")
  expect_length(result, 5)
  expect_true(all(grepl("@", result)))
})

