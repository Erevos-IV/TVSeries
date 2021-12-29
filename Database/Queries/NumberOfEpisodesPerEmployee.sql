SELECT emp.EmployeeID , CONCAT(emp.LastName, ' ',emp.FirstName) AS FullName, COUNT(*) AS NumberOfEpisodes
FROM Employees AS emp
INNER JOIN Actions AS ac USING(EmployeeID)
INNER JOIN Episodes AS ep ON ac.EpisodeID = ep.EpisodeID
GROUP BY  emp.EmployeeID;
