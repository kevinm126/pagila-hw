/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
select country, sum(amount) as profit from country
inner join city using(country_id) inner join address using (city_id)
inner join customer using (address_id) inner join rental using(customer_id)
inner join payment using(rental_id) group by country order by country;

