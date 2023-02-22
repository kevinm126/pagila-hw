/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select first_name,last_name,sum(amount)
from staff
inner join payment
using(staff_id)
where cast(payment_date AS varchar)like '%-01-%'
group by first_name,last_name ;
