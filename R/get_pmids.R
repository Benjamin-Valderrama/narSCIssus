#' Get all PMID's of an author of interest
#'
#' @param search_term A character vector in the same shape as queries used in entrez with the name of an author
#'
#' @return A list with all the PMID's associated to the author available in pubmed
#' @export
#'
#' @examples
#' get_pmids("Benjamin Valderrama[AU]")
#' get_pmids("Benjamin Valderrama[AU] microbiome")
get_pmids <- function(search_term){

        search_results <- rentrez::entrez_search(db = "pubmed",
                                                 term = search_term,
                                                 retmax = 1e4)  # Increase retmax to retrieve many results

        pmids <- search_results$ids

        return(pmids)
}
