clean_author_name <- function(search_term){

        clean_name <- sub(x = search_term,
                          pattern = "\\[AU\\]*",
                          replacement = "",
                          ignore.case = TRUE)
}
