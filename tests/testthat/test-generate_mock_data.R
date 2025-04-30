
test_that("generate_mock_data returns a data.frame of expected structure", {
  df <- generate_mock_data(5, seed = 123)
  expect_s3_class(df, "data.frame")
  expect_equal(nrow(df), 5)
  expect_true(all(c("name", "email", "age", "address") %in% names(df)))
})

