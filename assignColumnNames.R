## Assiggn new column names to the generic ones in the created dataset

assign_colnames <- function(dataset) {
        ## Read all column names from file
        colnames <- read.table("features.txt", stringsAsFactors=FALSE)
        ## Uses column V2 in colnames as the column names
        cols <- colnames$V2

        ##  Convert given labels to more readable names by eleminating "()" with gsub!
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