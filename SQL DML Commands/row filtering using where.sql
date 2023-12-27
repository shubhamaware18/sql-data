use campusx;
########################################
-- filtering rows with the help of where
-- finding out all the smartphones where brnad_name is samsung
select * from campusx.smartphones
where brand_name = 'samsung';

########################################
-- finding how much samsung phones are present in data
select count(*) from campusx.smartphones
where brand_name = 'samsung';

########################################
-- find all the smartphones whose price is greter than 50000
select * from campusx.smartphones
where price > 50000;
########################################
-- find  the count smartphones whose price is greter than 50000
select count(*) from campusx.smartphones
where price > 50000;

########################################
-- find all the smartphones whose price is greter than 50000 and less than 100000
select * from campusx.smartphones
where price between 50000 and 100000;
########################################
-- find count of the smartphones whose price is greter than 50000 and less than 100000
select count(*) from campusx.smartphones
where price between 50000 and 100000;

-- or
select * from campusx.smartphones
where price > 50000 and price < 100000;

########################################
-- find all the smartphones whose rating greater than 80 and price less than 25000
select * from campusx.smartphones
where rating > 80 and price < 25000;
########################################

-- find all the samsung phones whose RAM > 8GB
select * from campusx.smartphones
where brand_name = 'samsung' and ram_capacity > 8;

#########################################

-- select all samsung smartphones with processor brand = snapdragon
select * from campusx.smartphones
where brand_name = 'samsung' and processor_brand = 'snapdragon';

#########################################

-- select all brands who sell smartphones with price > 50000
select distinct (brand_name) from campusx.smartphones
where price > 50000;

#########################################

-- select all processor brands
select distinct (processor_brand) from campusx.smartphones;