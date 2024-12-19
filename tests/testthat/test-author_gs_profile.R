test_that("All author information is pulled from Google scholar as a list", {

  expect_equal(class(author_gs_profile("Benjamin Valderrama")), "list")

  expect_equal(names(author_gs_profile("Benjamin Valderrama")),

               c("id", "name", "affiliation", "total_cites", "h_index", "i10_index",
                 "fields", "homepage", "coauthors", "available", "not_available")
               )

  expect_equal(author_gs_profile("Benjamin Valderrama") |> length(),  11)

})
