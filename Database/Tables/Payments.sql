CREATE TABLE Payments(
	PaymentID INT NOT NULL AUTO_INCREMENT,
    ActionID INT NOT NULL,
    Amount DOUBLE NOT NULL,
    DateOfPayment DATETIME NOT NULL,
    
    CHECK( ActionID>0),
    CHECK( Amount>0),
    
    PRIMARY KEY(PaymentID),
    FOREIGN KEY(ActionID) REFERENCES Actions(ActionID)
) ENGINE = InnoDB, AUTO_INCREMENT = 10
