# Oscars,Ratings,and Films-Oh Py!

## Background

It seems like a bygone activity of yesteryear, but yes people did go to movie theaters. With the advent of streaming services and well Covid, most of us are enjoying film from the comfort of our couch.  We have many movie options! How do we know if what we select is “quality” and if something is “quality” is it something the average streamer really wants to watch?
We extracted data from an Academy Awards Database and a Streaming Services database to try and determine: 

* Do award winning films actually have high user ratings?
* Do awards impact film popularity on streaming services?
* Do award winning directors receive higher ratings?
* Do films with winning soundtracks have higher popularity?

## Extraction  

The first dataset was extracted from Kaggle.com in CSV.  This data included details on movie titles, user ratings, streaming services supporting the film, director, and release year, genres, and runtime. 

The team leveraged DataHub for the second dataset extraction in JSON format.  This data set provided details year, award category, winner (T/F), and winner name.  

Both datasets were downloaded and imported into Python for cleaning. 

* https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney
* https://datahub.io/rufuspollock/oscars-nominees-and-winners

## Transformation

### Summary of Streaming Data Cleanse

* Drop empty columns
* Remove rows that did not contain rating information
* Split First and Second Director, drop any additional director information
* Split Location cell into Primary and Secondary Location, drop other locations
* Split Language into Primary and Secondary Language, drop other languages
* Split Genres into eight separate columns
* Convert streaming services cells to Booleans

### Challenges
The greatest challenge of the Streaming Data was that several cells contained multiple data points separated by commas. Some of these cells were not applicable for the team's analysis, thus the decision was made to drop any additional data elements 
post the primary and secondary listing.  The exception being the genres information which was split and added to eight new genre 
columns.

### Summary of Awards Data Cleanse

* Identify unique fields;
* Combine data with similar music categories;
* Combine data with similar short film categories;
* Combine data with similarities for cinematography, art direction;
* Identify winning actors;
* Remove “year_ceremony” and “ceremony” columns
* Identify winning best pictures.

### Challenges
The greatest challenge with the Awards dataset was that there were several columns containing similar categories.  This level of detail was not required 
for the team’s assessment and therefore the data was merged.  As we progressed through the initial dataset, we found that it would be difficult to join to 
the other dataset, so a new source file was used which listed film titles.

### Data Joins
The original data sources did not have a viable unique id to combine into a relation database.  A third data source from a CSV file was leveraged that 
included film name as well as awards to remediate this issue.  

Once the data was finalized, a ERD was constructed to establish how the data would be loaded into a relational database.  This analysis supported the construction of six tables.  
Primary and Foreign keys were identified for data points category_id, nominee_id, film_id. 


## Load

 UNCC Data Analytics Bootcamp Project for ETL- Based on the concept of oscars and successful films on streaming services.
