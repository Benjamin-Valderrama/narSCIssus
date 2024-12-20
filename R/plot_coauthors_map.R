#' Title
#'
#' @param coauthors_df
#'
#' @return
#' @export
#'
#' @examples
plot_coauthors_map <- function(coauthors_df){

        # add country
        coauthors_df <- add_country_to_coauthors_df(coauthors_df)

        # identify countries with detected coauthors
        world <- ggplot2::map_data("world")
        world$coauthor <- ifelse(world$region %in% coauthors_df$country,
                                 yes = TRUE,
                                 no = NA)

        plot <- ggplot2::ggplot(data = world,
                                ggplot2::aes(long, lat, group = group)) +
                ggplot2::geom_polygon(ggplot2::aes(fill = coauthor),
                                      linewidth = 0.1,
                                      color = "grey40",
                                      show.legend = FALSE) +
                ggplot2::scale_fill_manual(values = c("TRUE" = "red3"), na.value = "grey") +
                ggplot2::theme_void()

        return(plot)
}
