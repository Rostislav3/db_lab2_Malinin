-- ефективність 
select * from efficency
	
	
-- к-сть постачальників 	
select name, count(mnf_name) from manufacturer 
	inner join vaccines on manufacturer.mnf_id=vaccines.mnf_id 
	group by name

-- відношення країн виготовлення певної вакцини
select country_name,count(name) from vaccines 
	inner join origin_country on vaccines.country_id=origin_country.country_id 
	group by country_name
