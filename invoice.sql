-- INVOICE TABLE --

-- 1.
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- 2.
SELECT MAX(total) FROM invoice;

-- 3.
SELECT MIN(total) FROM invoice;

-- 4.
SELECT * FROM invoice
WHERE total > 5;

-- 5.
SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- 6.
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- 7.
SELECT AVG(total) FROM invoice;

-- 8.
SELECT SUM(total) FROM invoice;

-- 9.
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

-- 10.
/* 
ERROR MESSAGE: Query failed because of: error: update or delete on table "invoice" violates foreign key constraint "invoice_line_invoice_id_fkey" on table "invoice_line"
*/

    -- Had to run this code first because the invoice_line table references it --
DELETE
FROM invoice_line
WHERE invoice_id = 1;

    -- Then the actualy code could be run --

DELETE
FROM invoice
WHERE invoice_id = 1;
