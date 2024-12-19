get_coauthors <- function(search_term){

        # Extract the author name from the search term
        clean_author_name <- clean_author_name(search_term = search_term)

        # Get all pmids associated with the search term
        pmids <- get_pmids(search_term = search_term)


        # Get authors nodes for each pmid
        list_of_author_pubs <- lapply(pmids, get_authors_node) |>
                # Transfor each node (each author name) into a dataframe
                lapply(., function(x) lapply(x, author_as_df)) |>
                # bind all the author dataframes of each paper
                lapply(., function(x) do.call(rbind, x))

        # Add pmids to the dataframes of each publication
        coauthors_df <- Map(add_pmid_to_author_df, list_of_author_pubs, as.list(pmids)) |>
                do.call(rbind, .) |>
                subset(full_name != clean_author_name)


        return(coauthors_df)

}
