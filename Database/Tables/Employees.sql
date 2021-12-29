
CREATE TABLE Employees(
	EmployeeID INT NOT NULL AUTO_INCREMENT,
    LastName VARCHAR(25) NOT NULL,
    FirstName VARCHAR(25) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    -- PhoneNumber must be varchar because of + symbol in numbers.
    PhoneNumber VARCHAR(15) NOT NULL,
    DateOfBirth DATE NOT NULL,
    DateOfEmployement DATE NOT NULL,
    -- Jobtype is varchar(1) in case of A for actor and D for director.
    JobType VARCHAR(1) NOT NULL,
    Nicknames TEXT,
    -- Rating is INT(1) because rating can be from 1 to 5(stars).
    Rating INT(1) NOT NULL,
    
    /* Actors MUST BE over 18 years old to participate.
	   Any child in any episode refers to a parent after his/her contribution 
       (Accept to participate for the child in the episode).
    */
	CHECK (EXTRACT(Year FROM DateOfBirth) + 18 > EXTRACT(Year FROM DateOfEmployement)),

	PRIMARY KEY(EmployeeID)
) ENGINE = InnoDB, auto_increment = 10;
