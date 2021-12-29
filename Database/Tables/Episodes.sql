CREATE TABLE Episodes(
	EpisodeID INT NOT NULL AUTO_INCREMENT,
    SeriesID INT NOT NULL,
    -- must be a director.
    EmployeeID INT NOT NULL,
    EpisodeTitle VARCHAR(50) NOT NULL,
    Minutes DOUBLE NOT NULL,
    
    CHECK (SeriesID > 0),
    CHECK (EmployeeID > 0),
    CHECK (Minutes > 0),
    
    PRIMARY KEY(EpisodeID),
    FOREIGN KEY(SeriesID) REFERENCES Series(SeriesID),
    FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID)
    
) ENGINE = InnoDB, AUTO_INCREMENT = 10;
