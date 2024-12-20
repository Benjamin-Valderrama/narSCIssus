plot_businesscard_text <- function(business_card_text){


        plot <- business_card_text |>
                ggplot2::ggplot(ggplot2::aes(x = x, y = y)) +

                # Titles
                ggplot2::geom_text(inherit.aes = FALSE,
                                   ggplot2::aes(label = title,
                                                fontface = "bold",
                                                x = x, y = y),
                                   size = 4.5) +
                # Text
                ggplot2::geom_text(ggplot2::aes(label = value), size = 4,
                                   nudge_y = -0.35, vjust = 1) +

                ggplot2::coord_fixed() +
                ggplot2::scale_x_continuous(limits = c(-3, 3)) +
                ggplot2::scale_y_continuous(limits = c(1, 5.5)) +

                ggplot2::theme_void()


        return(plot)
}
