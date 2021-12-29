-- Show all payments for actors and directors after March, 2021.

SELECT ac.ActionID, CONCAT(emp.LastName, ' ',emp.FirstName) AS FullName, emp.Email, pay.Amount, pay.DateOfPayment, ep.EpisodeTitle
FROM Actions AS ac
INNER JOIN Episodes AS ep USING(EpisodeID)
INNER JOIN Payments AS pay USING(ActionID)
INNER JOIN Employees AS emp ON emp.EmployeeID = ac.EmployeeID
WHERE EXTRACT(Month FROM pay.DateOfPayment) >03; 
