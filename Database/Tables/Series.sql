CREATE TABLE Series(
		SeriesID INT NOT NULL AUTO_INCREMENT,
        SeriesTitle VARCHAR(25) NOT NULL,
        Budget DOUBLE NOT NULL,
        NumberOfEpisodes INT NOT NULL,
		
        CHECK (Budget > 0),
        CHECK (NumberOfEpisodes > 0),
       
        PRIMARY KEY(SeriesID)
) ENGINE = InnoDB, auto_increment = 10;
