test_that("PMID is added as a column to the author data frame", {

  # Check final output is a data.frame
  expect_equal(get_authors_node("38525261")[[2]] |>
                       author_as_df() |>
                       add_pmid_to_author_df("38525261") |>
                       class(), "data.frame")

  # Check the number of columns is right
  expect_equal(get_authors_node("38525261")[[2]] |>
                       author_as_df() |>
                       add_pmid_to_author_df("38525261") |>
                       ncol(), 5)

  # Check the names of the columns is right
  expect_contains(get_authors_node("38525261")[[2]] |>
                       author_as_df() |>
                       add_pmid_to_author_df("38525261") |>
                       names(),
               c("full_name", "last_name", "first_name", "affiliations", "PMID"))

})
