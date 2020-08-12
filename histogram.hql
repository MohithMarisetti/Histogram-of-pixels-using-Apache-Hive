drop table Pixels;

create table Pixels (
red int,
green int,
blue int)
row format delimited fields terminated by ',' stored as textfile;
load data local inpath '${hiveconf:P}' overwrite into table Pixels;


select '1', red, count(*) from Pixels GROUP BY red
UNION 
select '2', green, count(*) from Pixels GROUP BY green
UNION 
select '3', blue, count(*) from Pixels GROUP BY blue;  



