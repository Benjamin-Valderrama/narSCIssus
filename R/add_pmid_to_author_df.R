add_pmid_to_author_df <- function(author_df,
                                  pmid){

        author_df$PMID <- pmid
        return(author_df)

}
