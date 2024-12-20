businesscard_text <- function(search_term){

        gs <- author_gs_profile(search_term)

        formatted_fields <- format_fields(gs$fields)
        formatted_affiliations <- format_affiliations(gs$affiliation)

        # make the data.frame with author information
        card_df <- data.frame(title = c("Full Name",
                                        "Affiliation",
                                        "Total citations",
                                        "H-index",
                                        "Fields"),
                              value = c(gs$name,
                                        formatted_affiliations,
                                        gs$total_cites,
                                        gs$h_index,
                                        formatted_fields),

                              x = c(0, 0, -1, 1, 0),
                              y = c(5, 4, 3, 3, 2)
        )


        return(card_df)
}
