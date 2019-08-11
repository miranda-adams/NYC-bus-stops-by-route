library(tidyverse)
#load files
brooklyn_times <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\brooklyn_stop_times.txt")
brooklyn_trips <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\brooklyn_trips.txt")
#join files
brooklyn_stop_data <- brooklyn_times %>% left_join(brooklyn_trips, by = "trip_id") 
#optional subset to just relevant information, and to ensure all files have the same fields
brooklyn_stops <- subset(brooklyn_stop_data, select = 
                           c("trip_id", "stop_id", "route_id", "direction_id", "shape_id"))
#repeat for other boroughs and mta bus data
bronx_times <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\bronx_stoptimes.csv")
bronx_trips <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\bronx_trips.csv")
bronx_stop_data <- bronx_times %>% left_join(bronx_trips, by = "trip_id") 
bronx_stops <- subset(bronx_stop_data, select = 
                           c("trip_id", "stop_id", "route_id", "direction_id", "shape_id"))
queens_times <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\queens_stop_times.txt")
queens_trips <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\queens_trips.txt")
queens_stop_data <- queens_times %>% left_join(queens_trips, by = "trip_id") 
queens_stops <- subset(queens_stop_data, select = 
                        c("trip_id", "stop_id", "route_id", "direction_id", "shape_id"))
manhattan_times <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\manhattan_stop_times.txt")
manhattan_trips <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\manhattan_trips.txt")
manhattan_stop_data <- manhattan_times %>% left_join(manhattan_trips, by = "trip_id") 
manhattan_stops <- subset(manhattan_stop_data, select = 
                        c("trip_id", "stop_id", "route_id", "direction_id", "shape_id"))
staten_times <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\staten_stop_times.txt")
staten_trips <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\staten_trips.txt")
staten_stop_data <- staten_times %>% left_join(staten_trips, by = "trip_id") 
staten_stops <- subset(staten_stop_data, select = 
                        c("trip_id", "stop_id", "route_id", "direction_id", "shape_id"))
mtabus_times <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\mtabus_stop_times.txt")
mtabus_trips <- read_csv("C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\mtabus_trips.txt")
mtabus_stop_data <- mtabus_times %>% left_join(mtabus_trips, by = "trip_id") 
mtabus_stops <- subset(mtabus_stop_data, select = 
                        c("trip_id", "stop_id", "route_id", "direction_id", "shape_id"))

#combine the datasets and export as csv
bus_data <- do.call("rbind", list(mtabus_stops, staten_stops, manhattan_stops, queens_stops, bronx_stops, brooklyn_stops))
write.csv(bus_data, "C:\\Users\\Miranda\\Documents\\GitHub_project\\data\\bus_data.csv")
