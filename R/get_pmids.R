get_pmids <- function(search_term){

        search_results <- rentrez::entrez_search(db = "pubmed",
                                                 term = search_term,
                                                 retmax = 1e4)  # Increase retmax to retrieve many results

        pmids <- search_results$ids

        return(pmids)
}
