# TVSeries
Scenario: 
A TV company needs a database to record information about the TV series that it is going to produce. After meeting and discussing with the Stakeholders, you have identified the data requirements for an initial version of the database and the following business rules are set:  
i.	The database has to store data about TV series. Each series has a unique title and, additionally, a budget. Each series contains episodes. 
ii.	Episodes are considered only within the context of the series to which they belong; each episode of a series has a name that is unique among all the episodes of the series. (Hint: use a weak entity type).  
iii.	The database has to store data about two types of persons: actors and directors. Each of them has a unique personal number and a name that is composed of a first name and a last name. Moreover, persons may have nicknames (zero, one, or more). For actors we additionally want to record their rating. 

iv.	Actors may participate in series. For each of the series that an actor participates in, we want to record the amount of payment that the actor receives for participating in that series. 
v.	Each episode of a series is directed by one of the directors, but different episodes may be directed by different directors. Similar to the actors, directors receive payment for each directed episode, where the amount may be different for different episodes. We want to record the amount of payment they receive for each episode.
