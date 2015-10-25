
create_tidy_data <- function(dataset) {
        ## Group by two variables & calculate mean for all other variables
        tidy_dataframe <- dataset %>% group_by(subject, activity) %>% summarise_each(funs(mean))
        tidy_dataframe
}