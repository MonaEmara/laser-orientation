sci_data <- read_csv("data/sci-online-classes.csv") |> # read in data
  select(student_id, FinalGradeCEMS, course_id, ) |> # select variables
  rename(final_grade = FinalGradeCEMS) |> # rename FinalGradeCEMS
  filter(final_grade > .5) |> # keep grades higher than 50% 
  drop_na() # remove rows with missing data
add_numbers <- function(number_1, number_2) {
  number_1 + number_2
}
add_numbers(3,2)
ggplot(sci_data, aes(x = final_grade)) +
  geom_histogram(fill = "blue")
