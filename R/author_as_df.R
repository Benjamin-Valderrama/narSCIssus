#' Make a data frame with the information of an author from a publication retrieved from Entrez
#'
#' @param author A XML node with the information of an author from a paper
#'
#' @return A dataframe with the first, last and full name of the author, and their affiliation
#' @export
#'
#' @examples
#' pmids <- get_pmids("Benjamin Valderrama")
#'
#' list_of_author_pubs <- lapply(pmids, get_authors_node) |>
#' lapply(function(x){lapply(x, author_as_df) } )
author_as_df <- function(author){

        last_name <-  XML::xpathSApply(author, ".//LastName", XML::xmlValue)
        first_name <-  XML::xpathSApply(author, ".//ForeName", XML::xmlValue)
        full_name <- paste(first_name, last_name)
        affiliations <- XML::xpathSApply(author, ".//AffiliationInfo/Affiliation", XML::xmlValue)

        # Handle missing affiliations
        if (length(affiliations) == 0){ affiliations <- NA }

        author_df <- data.frame(
                full_name = full_name,
                last_name = last_name,
                first_name = first_name,
                affiliations = affiliations
        )

        return(author_df)

}
