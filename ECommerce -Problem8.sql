select p.PRO_ID,p.PRO_NAME from product as p
inner join
(
select o.*,sp.PRO_ID from `order` as o
inner join
supplier_pricing as sp on sp.PRICING_ID=o.PRICING_ID and o.ORD_DATE>"2021-10-05"
) as q
on p.PRO_ID = q.PRO_ID;