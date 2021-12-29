/* This table will hold data about which actors and directos 
   participated into which movies and will also have the salary
   for each one of them for each eepisode.
*/
CREATE TABLE Actions(
	ActionID INT NOT NULL AUTO_INCREMENT,
    EpisodeID INT NOT NULL,
    EmployeeID INT NOT NULL,
    SalaryForEpisode DOUBLE NOT NULL,
    
    CHECK (EpisodeID > 0),
    CHECK (EmployeeID > 0),
    CHECK (SalaryForEpisode > 0),
    
    PRIMARY KEY(ActionID),
    FOREIGN KEY(EpisodeID) REFERENCES Episodes(EpisodeID),
    FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID)
) ENGINE = InnoDB, AUTO_INCREMENT = 10; 
