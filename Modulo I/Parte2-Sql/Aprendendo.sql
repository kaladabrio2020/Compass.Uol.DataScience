SELECT * FROM postgres.sales.funnel f ;


select p.product_id ,p.model_year   from sales.products p ;
---
SELECT distinct p.brand from sales.products p 

---
select distinct  p.brand , p.price  from sales.products p 
order by p.price desc 
limit 10;


---
select c.email , c.birth_date ,(current_date - c.birth_date)/359  as idade_usuario  
from sales.customers c 
order by idade_usuario desc;

---
select (c.first_name ||' '|| c.last_name) as nome_completo , 
	   (current_date - c.birth_date)/359 as idade 
from sales.customers c ;

---like
select first_name ,(c.first_name ||' '|| c.last_name) as nome_completo , 
	   (current_date - c.birth_date)/359 as idade 
from sales.customers c 
where  c.first_name  like 'AD%';


---groubp

---having