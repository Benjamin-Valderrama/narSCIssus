test_that("The information of an author is contained as a data.frame", {

  # output is a data.frame
  expect_equal(get_authors_node("38525261")[[2]] |>
                       author_as_df() |>
                       class(), "data.frame")

  # data.frame contains certain columns of interest
  expect_contains(get_authors_node("38525261")[[2]] |>
                       author_as_df() |>
                       names(),
                  c("full_name", "last_name", "first_name", "affiliations"))

  # At least 1 author
  expect_gt(get_authors_node("38525261")[[2]] |>
                    author_as_df() |>
                    nrow(), 0)

})
