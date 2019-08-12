# NYC bus stops by route
These files are for anyone who wants to map or analyze bus stops in New York City. The finished data includes the stop ID number, the stop name, direction, bus route, and geometry information, in both ESRI Shapefile and CSV format. 

### Background
Current public shapefiles for MTA and NYCT (New York City Transit) bus stops didn't seem to include information on what route stops there, which makes a lot of analysis impossible. After working on my project and asking around, I realized that other people had made very similar files on their own too, because they also struggled to find the right data online. I figured I would share mine for the next person looking to do some bus stop analysis and mapping. 

### Methodology and Sources
If you want to do this with updated data, you can download the detailed stop information from the [MTA Data Feeds](http://web.mta.info/developers/developer-data-terms.html#data) and the shapefiles from [Newman Library](https://www.baruch.cuny.edu/confluence/display/geoportal/NYC+Mass+Transit+Spatial+Layers+Archive).
From the MTA data files, I downloaded the "stop_times" and "trip" files, and the most recent bus stop shapefiles from the Newman Library. 
In R, I merged stop_time and trip files using the trip_id shared variable for each borough and for the MTA bus company and bound them into one file. I exported that file as a CSV, which I uploaded to QGIS and joined with the route shapefile using the stop_ID field. I exported the features as bus_stops_gis as well.

### Thanks
I made this while working on a project for [Tri-State Transportation Campaign](tstc.org). 
