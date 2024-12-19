test_that("Authors node from a publication are retrievez from entrez", {

  # The authors are retrieved as a XMLNodeSet
  expect_equal(class(get_authors_node("38525261")), "XMLNodeSet")

  # The length of the output of get_authors_node is > 0
  expect_gt(length(get_authors_node("38525261")), 0)
})
