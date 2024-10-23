SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (Select Count(*) from data_churn)  as Percentage
from data_Churn
Group by Gender


SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 100.0 / (Select Count(*) from data_churn)  as Percentage
from data_churn
Group by Contract


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from data_churn) * 100  as RevPercentage
from data_churn
Group by Customer_Status


SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from data_churn)  as Percentage
from data_churn
Group by State
Order by Percentage desc


select distinct internet_type
from data_churn

