## The goal of this function is to prepare tidy data that can be used for later analysis. 
## The original data comes from Human Activity Recognition Using Smartphones Data Set, see
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


run_analysis <- function() {
        library(dplyr)
        library(data.table)
        source("createDataset.R")
        source("assignColumnNames.R")
        source("setActivityNames.R")
        source("getMeanAndStd.R")
        source("createTidyData.R")

        ## Load the test data into data frame
        dat <- create_dataset()
        ## Appropriately labels the data set with descriptive variable names
        dat <- assign_colnames(dat)
        ## Uses descriptive activity names to name the activities in the data set
        dat <- set_activity_names(dat)

        ## Extracts only the measurements on the mean and standard deviation for each measurement.
        ## With "subject" and "activity" to identify measurments.
        dat_melted <- get_mean_and_std(dat)

        ## From the data set "dat", create a second, independent tidy data set with the average
        ## of each variable for each activity and each subject.
        tidy_dataframe <- create_tidy_data(dat)
        ## Write new txt file without row names
        write.table(tidy_dataframe, file = "tidydata.txt", row.names = FALSE)
}