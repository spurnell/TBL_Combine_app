library(shiny)
library(shinydashboard)
library(tidyverse)

D_Combine_Data <-  read_csv(file = "Combine.Data", col_names = TRUE)
as.data.frame(D_Combine_Data)
