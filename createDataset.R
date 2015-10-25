create_dataset <- function() {
        ## Load the test data inte data frames
        subject_train <- read.table("train/subject_train.txt")
                # print(paste("subject_train= ", dim(subject_train)))
        x_train <- read.table("train/x_train.txt")
                # print(paste("x_train= ", dim(x_train)))
        y_train <- read.table("train/y_train.txt")
                # print(paste("y_train= ", dim(y_train)))

        ## Add the train data column wise
        traindata <- cbind(subject_train, x_train, y_train)

        ## Load the test data inte data frames
        subject_test <- read.table("test/subject_test.txt")
                # print(paste("subject_test= ", dim(subject_test)))
        x_test <- read.table("test/x_test.txt")
                # print(paste("x_test= ", dim(x_test)))
        y_test <- read.table("test/y_test.txt")
                # print(paste("y_test= ", dim(y_test)))

        ## Add the test data column wise
        testdata <- cbind(subject_test, x_test, y_test)

        ## Use the faster rbindlist from data.table library to rbind the two data frames
        dataframes <- list(traindata, testdata)
        dat <- rbindlist(dataframes)
        dat
}