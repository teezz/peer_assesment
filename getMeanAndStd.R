get_mean_and_std <- function(dataset) {
        ## grep not with value=TRUE, otherwise a character is returned and can not be used
        ## in the following select statement.
        ## Select() inputs must resolve to integer column positions!!
        meanCols <- grep("mean",names(dataset))
        stdCols <- grep("std",names(dataset))

        ## Selecting all necessury columns
        dat1 <- dataset %>% select(subject, activity, meanCols, stdCols)
        dat1
}