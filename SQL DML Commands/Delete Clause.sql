use campusx;
############################################
-- delete smartphones whose price is > 200000
select * from campusx.smartphones
where price > 200000;

-- deleting the observations
delete from campusx.smartphones
where price > 200000;
############################################
-- delete smartphones whose prime camera is > 100 MP and ram capacity > 8
select * from campusx.smartphones
where primary_camera_rear > 100 and ram_capacity > 8;

-- deleting the observations
delete from campusx.smartphones
where primary_camera_rear > 100 and ram_capacity > 8;

############################################
-- delete samsung smartphones whose price < 15000 and processor is 'exynos' and price > 20000
delete from campusx.smartphones
where brand_name = 'samsung' and processor_brand = 'exynos' and price > 20000;
