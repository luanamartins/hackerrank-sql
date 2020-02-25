set @total := (select count(1) from station);
set @row_id := 0;

select round(avg(lat_n), 4) as median
from (select * from station order by lat_n) as a
where (select @row_id := @row_id + 1)
between @total/2.0 and @total/2.0 + 1;