select supplier.* from supplier where supplier.SUPP_ID in
(select SUP.SUPP_ID from supplier_pricing as SUP where SUPP_ID<3) ;