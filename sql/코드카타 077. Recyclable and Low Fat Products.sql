-- LeetCode 1757
-- https://leetcode.com/problems/recyclable-and-low-fat-products/

SELECT product_id
FROM products
WHERE low_fats = 'Y' and recyclable = 'Y'
