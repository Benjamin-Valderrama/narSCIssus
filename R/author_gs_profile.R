author_gs_profile <- function(search_term){

        last_name <- sub(x = clean_author_name(search_term),
                         pattern = ".*\\s",
                         replacement = "")

        first_name <- sub(x = clean_author_name(search_term),
                          pattern = "\\s.*",
                          replacement = "")

        author_gs_profile <- scholar::get_scholar_id(last_name = last_name,
                                                     first_name = first_name) |>
                scholar::get_profile()

        return(author_gs_profile)

}
