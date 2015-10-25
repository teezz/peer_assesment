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
5. The function "assign_colnames(dat)" prosesses the data fram "dat" and assigns appropriate labels the data set with descriptive variable names.
6.


]]></content>
  <tabTrigger>readme</tabTrigger>
</snippet>