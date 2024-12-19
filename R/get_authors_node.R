get_authors_node <- function(pmid){

        # Fetch article data in XML format
        xml_data <- rentrez::entrez_fetch(db = "pubmed", id = pmid, rettype = "xml", parsed = FALSE)
        xml_parsed <- XML::xmlParse(xml_data)

        # XMLNodeSet of the article authors
        authors <- XML::getNodeSet(xml_parsed, "//Author")

}
