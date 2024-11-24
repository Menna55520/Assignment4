-- 1st query 
SELECT DISTINCT orderNumber
FROM `orderdetails`
WHERE productCode LIKE 'S18%' AND (priceEach * quantityOrdered) > 100 ;

-- 2nd query 
SELECT * FROM `payments`
WHERE paymentDate LIKE '%-05' OR paymentDate LIKE '%-06' ;

--3rd query
SELECT creditLimit FROM `customers`
WHERE country = 'USA' AND phone LIKE '%5555%'
ORDER BY creditLimit DESC LIMIT 1 OFFSET 4 ;