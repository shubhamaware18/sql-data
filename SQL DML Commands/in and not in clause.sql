use campusx;
#########################################
-- select all smartphone whose processor brand is either 'snapdragon' or 'exynos' or 'bionic'
select * from campusx.smartphones
where processor_brand = 'snapdragon' or
processor_brand = 'exynos' or
processor_brand = 'bionic';

-- OR  we can write this in this format as well
select * from campusx.smartphones
where processor_brand IN ('snapdragon', 'exynos', 'bionic');

#########################################
-- select all smartphone whose processor brand is neither 'snapdragon' nor 'exynos' nor 'bionic'
select * from campusx.smartphones
where processor_brand NOT IN ('snapdragon', 'exynos', 'bionic');
#########################################
 
-- select all smartphone whose processor brand is neither 'snapdragon'