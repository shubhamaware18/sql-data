 -- select all rows 
select * from campusx.smartphones;
#######################################

-- select perticular columns
select model, price, rating, has_5g from campusx.smartphones;
########################################
-- renaming column name (as - alias)
select distinct (brand_name)  as "Brand" from campusx.smartphones;
########################################
select distinct (processor_brand) as 'Processor' from campusx.smartphones;
########################################
 -- selecting distinct values from columns
select distinct brand_name, processor_brand from campusx.smartphones;
########################################

select * from campusx.smartphones
where brand_name = 'samsung';
select * from campusx.smartphones
where price > 100000;

#######################################
select * from campusx.smartphones
where price > 2000 and price < 10000;

-- or 
select * from campusx.smartphones
where price between 2000 and 10000;

######################################
select * from campusx.smartphones
where rating > 80 and price < 25000;
########################################
-- calculating PPI 
select model, 
sqrt(resolution_width * resolution_width +
 resolution_height * resolution_height)/ screen_size as 'PPI'
from campusx.smartphones;
########################################
-- creating constants
select model,  'Smartphone' as 'Type' from campusx.smartphones;

########################################
-- finding unique brandname
select distinct (brand_name) as 'All Brands' from campusx.smartphones;

########################################
-- finding unique phone brandname count
select count(distinct (brand_name)) as 'All Brands' from campusx.smartphones;
########################################
-- finding unique processor brandname 
select distinct (processor_brand)  as 'Unique_Processors' from campusx.smartphones;
########################################
-- finding unique processor brand count
select count(distinct (processor_brand)) as 'Number_of_processor' 
from campusx.smartphones;

########################################
-- finding unique OS
select distinct (os) as 'os' from campusx.smartphones;

########################################
-- finding unique combination of brand and processor_brand
select distinct  brand_name,processor_brand from campusx.smartphones;

