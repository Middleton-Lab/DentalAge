test_that("Scores are checked properly", {
  expect_true(validate_score(NA))
  expect_true(validate_score("C.i"))
  expect_true(validate_score("Cr.5"))

  expect_false(validate_score("Cr 1/2"))
  expect_false(validate_score("Rc"))
})
