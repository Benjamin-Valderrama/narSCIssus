author_as_df <- function(author){

        last_name <-  XML::xpathSApply(author, ".//LastName", XML::xmlValue)
        first_name <-  XML::xpathSApply(author, ".//ForeName", XML::xmlValue)
        full_name <- paste(first_name, last_name)
        affiliations <- XML::xpathSApply(author, ".//AffiliationInfo/Affiliation", XML::xmlValue)

        # Handle missing affiliations
        if (length(affiliations) == 0){ affiliations <- NA }

        author_df <- data.frame(
                full_name = full_name,
                last_name = last_name,
                first_name = first_name,
                affiliations = affiliations
        )

        return(author_df)

}
