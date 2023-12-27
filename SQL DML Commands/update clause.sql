use campusx;
#####################################################
-- replace all the observations that contains processor_brand  = mediatek to dimensity
UPDATE campusx.smartphones
SET processor_brand = 'dimencity'
where processor_brand = 'mediatek';
#####################################################
-- update user table in which 
update campusx.users
set email = 'shubhamaware@yahoo.com', password = '1821'
where name = 'Shubham' and user_id = '1';
#####################################################
select * from campusx.users
