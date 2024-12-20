make_business_card <- function(search_term){

        # Get coauthors and their countries
        coauthors <- get_coauthors(search_term)

        # map coauthors to the map
        map <- plot_coauthors_map(coauthors)

        # get author metrics from google scholar
        text <- businesscard_text(search_term) |>
                plot_businesscard_text()

        # Make business card by merging author metrics and location of coauthors
        business_card_plot <- patchwork::wrap_plots(text, map, ncol = 2) +
                patchwork::plot_layout(width = c(1,2))

        return(business_card_plot)
}
