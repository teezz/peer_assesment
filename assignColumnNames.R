## Assiggn new column names to the generic ones in the created dataset

assign_colnames <- function(dataset) {
        colnames <- read.table("features.txt", stringsAsFactors=FALSE)
        cols <- colnames$V2

        ##  Convert to more readable names by eleminating "()" with gsub!
        for(i in 1:length(cols)) {
                cols[i] <- gsub("\\()", "", cols[i])
        }
        
        ## Add missing column names to the cols vector
        a <- "subject"
        b <- "activity"
        cols <- c(a, cols, b)
        ## Assign the new colum names to given dataset
        colnames(dataset) <- cols
        dataset
}