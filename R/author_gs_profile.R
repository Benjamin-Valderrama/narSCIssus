#' Get the Google Scholar profile of an author
#'
#' @param search_term A character vector in the same shape as queries used in entrez with the name of an author
#'
#' @return a list with information retrieved from the authors Google scholar profile
#' @export
#'
#' @examples
#' author_gs_profile("Benjamin Valderrama[AU]")
author_gs_profile <- function(search_term){

        last_name <- sub(x = clean_author_name(search_term),
                         pattern = ".*\\s",
                         replacement = "")

        first_name <- sub(x = clean_author_name(search_term),
                          pattern = "\\s.*",
                          replacement = "")

        author_gs_profile <- scholar::get_scholar_id(last_name = last_name,
                                                     first_name = first_name) |>
                scholar::get_profile()

        return(author_gs_profile)

}
