set_activity_names <- function(dataset) {
        # Load activity labels from file
        activity_names <- read.table("activity_labels.txt", stringsAsFactors=FALSE)

        ## Replace ID with activity names
        for (i in 1:6) {
                dataset$activity[dataset$activity==i] <-  activity_names$V2[i]
        }

        dataset
}