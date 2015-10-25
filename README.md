<snippet>
  <content><![CDATA[
# ${1:Peer Asessment}
This porpose of this project is to collect and clean data.
## Content
The original data comes from Human Activity Recognition Using Smartphones Data Set, see
"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". The original data are stored in the two subfolders "test" and "train". These data were loaded and processed in the main script in file "run_analysis.R" were all subfunctions were called.
## Usage
1. Set "Peer_Assessment" as your working directory and load file "run_analysis.R" with "source('run_analysis.R')", then start the script by calling function "run_analysis()".
2. The function loads the required librarys "dyplr" and "data.table".
3. The source files for all subfunctions were loaded.
4. The function "create_dataset()" loads the test and training data and combines them into one data frame ("dat").
5. The function "assign_colnames(dat)" prosesses the data frame "dat" and returns a data frame with descriptive variable names instead of the prior generic ones. This is done by adding volunteer IDs as "subject" and "activity" IDs to the data frame and reading the other column names out of the given file "features.txt".
6. Function "set_activity_names(dat)" maps the activity IDs with descriptive activity names, replaces them and returns the changed data frame.
7. Function "get_mean_and_std(dat)" extracts only the measurements on the mean and standard deviation for each measurement by using "subject" and "activity" to identify the measurments.
8. Function "create_tidy_data(dat)" groups the data by the two variables "subject" and "activity" and calculates the mean for all other variables within these groups.
9. The last function "write.table(...) creates a new txt file in the working directory with the cleaned tidy data set and without row names.

]]></content>
  <tabTrigger>readme</tabTrigger>
</snippet>