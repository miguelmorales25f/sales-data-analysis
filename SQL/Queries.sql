SHOW DATABASES;
USE clasicmodels;
SELECT
    t1.orderNumber AS factura,
    t1.orderDate AS fecha,
    t1.shippedDate AS fecha_entrega,
    t3.productName AS producto,
    t3.productLine AS categoria,
    t3.buyPrice AS precio_compra,
    t2.priceEach AS precio,
    t2.quantityOrdered AS cantidad,
    t1.status,
    t1.customerNumber,
    t4.customerName AS cliente,
    t4.city AS ciudad,
    t4.country AS pais,
    t5.employeeNumber,
    CONCAT(t5.firstName, ' ', t5.lastName) AS vendedor
FROM orders AS t1
JOIN orderdetails AS t2 
    ON t1.orderNumber = t2.orderNumber
JOIN products AS t3 
    ON t2.productCode = t3.productCode
JOIN customers AS t4 
    ON t1.customerNumber = t4.customerNumber
JOIN employees AS t5 
    ON t4.salesRepEmployeeNumber = t5.employeeNumber;