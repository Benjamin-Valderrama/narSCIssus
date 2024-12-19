#' Get a nodes with all authors in a publication
#'
#' @param pmid A character vector with a PubMed ID of a publication made by the author
#'
#' @return A list of nodes of each author in a publication
#' @export
#'
#' @examples
#' pmids <- get_pmids("Benjamin Valderrama")
#' pmid <- pmids[1]
#' get_authors_node(pmid)
get_authors_node <- function(pmid){

        # Fetch article data in XML format
        xml_data <- rentrez::entrez_fetch(db = "pubmed",
                                          id = pmid,
                                          rettype = "xml",
                                          parsed = FALSE)
        xml_parsed <- XML::xmlParse(xml_data)

        # XMLNodeSet of the article authors
        authors <- XML::getNodeSet(xml_parsed, "//Author")

}
