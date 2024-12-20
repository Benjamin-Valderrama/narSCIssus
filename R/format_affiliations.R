#' Title
#'
#' @param affiliation
#'
#' @return
#' @export
#'
#' @examples
format_affiliations <- function(affiliation){

        if(grepl(x = affiliation, pattern = ";")){

                affiliation <- sub(x = affiliation,
                                   pattern = ";",
                                   replacement = "\n")
        }

        return(affiliation)
}
