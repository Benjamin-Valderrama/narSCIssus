businesscard_text <- function(search_term){

        gs <- author_gs_profile(search_term)


        # Format fields for plotting
        formatted_fields <- character()

        for (i in 1:length(gs$fields)){
                if(i %% 2 != 0){
                        field <- paste0(gs$fields[i], "   ")
                        formatted_fields <- c(formatted_fields, field)}
                else {
                        field <- paste0(gs$fields[i], "\n")
                        formatted_fields <- c(formatted_fields, field)
                }
        }

        formatted_fields <- paste(formatted_fields, collapse = "")


        # make the data.frame with author information
        card_df <- data.frame(title = c("Full Name",
                                        "Affiliation",
                                        "Total cites",
                                        "H-index",
                                        "Fields"),
                              value = c(gs$name,
                                        gs$affiliation,
                                        gs$total_cites,
                                        gs$h_index,
                                        formatted_fields),

                              x = c(0, 0, -1, 1, 0),
                              y = c(5, 4, 3, 3, 2)
        )


        return(card_df)
}
