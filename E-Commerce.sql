/*Create a stored procedure to display supplier id, name, Rating (Average rating of all the products sold by every customer), 
and Type_of_Service.*/
DELIMITER //
CREATE PROCEDURE SupplierRatingAndService()
BEGIN
    SELECT
        supplier.SUPP_ID,
        supplier.SUPP_NAME,
        AVG(rating.RAT_RATSTARS) AS Average_Rating,
        CASE
            WHEN AVG(rating.RAT_RATSTARS) = 5 THEN 'Excellent Service'
            WHEN AVG(rating.RAT_RATSTARS) > 4 THEN 'Good Service'
            WHEN AVG(rating.RAT_RATSTARS) > 2 THEN 'Average Service'
            ELSE 'Poor Service'
        END AS Type_of_Service
    FROM
        supplier
    LEFT JOIN supplier_pricing ON supplier.SUPP_ID = supplier_pricing.SUPP_ID
    LEFT JOIN orders ON supplier_pricing.PRICING_ID = orders.PRICING_ID
    LEFT JOIN rating ON orders.ORD_ID = rating.ORD_ID
    GROUP BY supplier.SUPP_ID, supplier.SUPP_NAME;
END //
DELIMITER ;

-- Call the stored procedure
CALL SupplierRatingAndService();








