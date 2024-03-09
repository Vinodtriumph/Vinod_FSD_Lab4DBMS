
select final.SUPP_ID,supplier.SUPP_NAME,final.average from
( 
select test2.SUPP_ID,avg(rat_ratstars) as Average from 
(
select sp.SUPP_ID,t1.ord_id,t1.rat_ratstars from supplier_pricing as sp
inner join
(
select o.PRICING_ID,rat.ORD_ID,rat.RAT_RATSTARS from `order` as o
inner join
rating as rat on o.ORD_ID = rat.ORD_ID
) as t1 on sp.PRICING_ID = t1.pricing_id
)as test2 group by test2.SUPP_ID) as final inner join supplier where final.supp_id = supplier.supp_id;