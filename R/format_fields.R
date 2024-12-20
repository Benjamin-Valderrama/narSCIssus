format_fields <- function(fields){

        # Format fields for plotting
        formatted_fields <- character()

        for (i in 1:length(fields)){
                if(i %% 2 != 0){
                        field <- paste0(fields[i], "   ")
                        formatted_fields <- c(formatted_fields, field)}
                else {
                        field <- paste0(fields[i], "\n")
                        formatted_fields <- c(formatted_fields, field)
                }
        }

        formatted_fields <- paste(formatted_fields, collapse = "")
}
