test_that("PMIDs are returned from entrez as characters", {
  expect_equal(class(get_pmids("Benjamin Valderrama")), "character")
})
