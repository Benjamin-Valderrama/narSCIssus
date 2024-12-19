#' Get first and last names from a entrez's search term
#'
#' @param search_term A character vector in the same shape as queries used in entrez with the name of an author
#'
#' @return A character vector with just the first and last name of the author in the search term
#' @export
#'
#' @examples
#' clean_author_name("Benjamin Valderrama[AU]")
clean_author_name <- function(search_term){

        clean_name <- sub(x = search_term,
                          pattern = "\\[AU\\].*",
                          replacement = "",
                          ignore.case = TRUE)
}
