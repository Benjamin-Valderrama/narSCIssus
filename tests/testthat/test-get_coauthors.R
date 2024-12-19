test_that("Coauthors information is returned as a data.frame", {

  # Output is a data.frame
  expect_equal(get_coauthors("Benjamin Valderrama[AU] microbiome") |> class(), "data.frame")

  # At least one coauthor is returned
  expect_gt(nrow(get_coauthors("Benjamin Valderrama[AU] microbiome")), 0)
})
