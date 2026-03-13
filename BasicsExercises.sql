USE AdventureWorksDW2019  --- select the database as adventure works


-- Joins and Data Summarization using GROUP BY 


--- INNER JOIN CONCEPTS WITH WHERE CONDITION APPLIED
/*
SELECT 
DimEmployee.FirstName,
DimEmployee.LastName,
DimSalesTerritory.SalesTerritoryRegion,
DimSalesTerritory.SalesTerritoryCountry
FROM DimEmployee INNER JOIN dbo.DimSalesTerritory ON
DimEmployee.SalesTerritoryKey = DimSalesTerritory.SalesTerritoryKey
WHERE DimSalesTerritory.SalesTerritoryCountry != 'NA'
*/


-- CROSS JOIN
/*
SELECT 
*
FROM DimEmployee CROSS JOIN DimSalesTerritory 

*/
-- EXEC sp_help

/*
SELECT DimEmployee.DepartmentName,
COUNT(*) AS 'Count of Employees'
FROM DimEmployee 
RIGHT JOIN DimSalesTerritory 
ON DimEmployee.SalesTerritoryKey = DimSalesTerritory.SalesTerritoryKey
GROUP BY DimEmployee.DepartmentName
ORDER BY [Count of Employees] DESC
*/



/*
SELECT 
DimGeography.City,
COUNT(DimCustomer.NumberCarsOwned) AS 'Number of Cars Owned',
SUM(DimCustomer.YearlyIncome) AS 'Total Yearly Income'
FROM DimCustomer 
INNER JOIN 
DimGeography ON 
DimGeography.GeographyKey = DimCustomer.GeographyKey
GROUP BY DimGeography.City 
*/

SELECT 
DimEmployee.DepartmentName,
COUNT(*) AS 'count of employees'
FROM 
DimEmployee
GROUP BY DimEmployee.DepartmentName












