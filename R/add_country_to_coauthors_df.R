#' Title
#'
#' @param coauthors_df
#'
#' @return
#' @export
#'
#' @examples
add_country_to_coauthors_df <- function(coauthors_df){

  coauthors_df$country <- stringr::str_extract(string = tolower(coauthors_df$affiliations),
                                               pattern = paste0(tolower(country_names),
                                                                collapse = "|")) |>
          stringr::str_to_title()

  coauthors_df$country <- ifelse(grepl(x = coauthors_df$country,
                                       pattern = "Uk|Usa"),
                                 yes = toupper(coauthors_df$country),
                                 no = coauthors_df$country)

  return(coauthors_df)

}
