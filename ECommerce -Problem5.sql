select q.*,product.PRO_NAME from
(select c.CUS_NAME,c.CUS_ID,p.ORD_ID, p.ORD_AMOUNT,p.PRO_ID from

(select o.*,supplier_pricing.PRO_ID from `order` as o inner join supplier_pricing on o.PRICING_ID=supplier_pricing.PRICING_ID) as p inner join customer as c where c.CUS_ID=p.CUS_ID and c.CUS_ID=2 )as q inner join product on product.PRO_ID=q.PRO_ID  ;