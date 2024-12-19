test_that("Search term is cleaned-up to contain just the name of the author", {

  expect_equal(clean_author_name("Benjamin Valderrama[AU] microbiome"), "Benjamin Valderrama")

  expect_equal(length(clean_author_name("Benjamin Valderrama[AU] microbiome")), 1)
})
