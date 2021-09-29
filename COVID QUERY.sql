select *
from [TEST DATA].dbo.country_wise_latest

select Country_Region,Confirmed,Deaths,Recovered
from [TEST DATA].dbo.country_wise_latest

select Country_Region,Confirmed,Deaths,Recovered
from [TEST DATA].dbo.country_wise_latest
WHERE Country_Region = 'Algeria'

select Country_Region,Confirmed,Deaths,Recovered
from [TEST DATA].dbo.country_wise_latest
WHERE Deaths = 0

--- HAVE CAST STATEMENT, TO CHANGE NVCHAR TO INT
select WHO_Region,SUM(cast(Deaths as int)) as total_deaths,sum(Confirmed) as total_confirmed
from [TEST DATA].dbo.country_wise_latest
Group by WHO_Region

Select CONVERT (int,Deaths) as Deaths
from [TEST DATA].dbo.country_wise_latest

select Country_Region,Confirmed,Deaths,(Deaths/Confirmed) * 100 as death_rate
from [TEST DATA].dbo.country_wise_latest

select WHO_Region,SUM(cast(Deaths as int)) as total_deaths,sum(Confirmed) as total_confirmed,(SUM(cast(Deaths as int))/sum(Confirmed))*100 as percent_died
from [TEST DATA].dbo.country_wise_latest
Group by WHO_Region

select Country_Region,Confirmed,Deaths,(Deaths/Confirmed) * 100 as death_rate
from [TEST DATA].dbo.country_wise_latest
where Country_Region like 'R%'

select Country_Region,Confirmed,Deaths,(Deaths/Confirmed) * 100 as death_rate
from [TEST DATA].dbo.country_wise_latest
Order by Confirmed desc

select Country_Region,Confirmed,Deaths,(Deaths/Confirmed) * 100 as death_rate
from [TEST DATA].dbo.country_wise_latest
Order by 2,3

select SUM(Confirmed) as total_confirmed
from [TEST DATA].dbo.country_wise_latest

select * from
(select Country_Region,Confirmed,Deaths,Recovered,Active,WHO_Region from [TEST DATA].dbo.country_wise_latest)
as New_table

select *
from [TEST DATA].dbo.country_wise_latest
WHERE NOT WHO_Region = 'Americas' AND
NOT WHO_Region='Europe'

select Country_Region,Confirmed,Deaths,Recovered,WHO_Region
from [TEST DATA].dbo.country_wise_latest
where Confirmed in 
(select Confirmed from [TEST DATA].dbo.country_wise_latest
 where Confirmed between 1 AND 500)
 ORDER BY Confirmed desc

 select Country_Region,Confirmed,Deaths,Recovered,WHO_Region,
 CASE WHO_Region
	WHEN 'Americas' then 'Americans'
 Else 'NOT'
	End American
from [TEST DATA].dbo.country_wise_latest
ORDER BY Confirmed desc

select Country_Region,Confirmed,Deaths,Recovered,WHO_Region,
 CASE WHO_Region
	WHEN 'Americas' then 'Americans'
 Else 'NOT'
	End American
--ORDER BY Confirmed desc
into NewTable
from [TEST DATA].dbo.country_wise_latest

select * 
from NewTable