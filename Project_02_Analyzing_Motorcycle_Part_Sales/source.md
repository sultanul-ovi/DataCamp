![Parked motorcycle](motorcycle.jpg)

You're working for a company that sells motorcycle parts, and they've asked for some help in analyzing their sales data!

They operate three warehouses in the area, selling both retail and wholesale. They offer a variety of parts and accept credit cards, cash, and bank transfer as payment methods. However, each payment type incurs a different fee.

The board of directors wants to gain a better understanding of wholesale revenue by product line, and how this varies month-to-month and across warehouses. You have been tasked with calculating net revenue for each product line and grouping results by month and warehouse. The results should be filtered so that only `"Wholesale"` orders are included.

They have provided you with access to their database, which contains the following table called `sales`:

## Sales

| Column         | Data type | Description                                                                      |
| -------------- | --------- | -------------------------------------------------------------------------------- |
| `order_number` | `VARCHAR` | Unique order number.                                                             |
| `date`         | `DATE`    | Date of the order, from June to August 2021.                                     |
| `warehouse`    | `VARCHAR` | The warehouse that the order was made from&mdash; `North`, `Central`, or `West`. |
| `client_type`  | `VARCHAR` | Whether the order was `Retail` or `Wholesale`.                                   |
| `product_line` | `VARCHAR` | Type of product ordered.                                                         |
| `quantity`     | `INT`     | Number of products ordered.                                                      |
| `unit_price`   | `FLOAT`   | Price per product (dollars).                                                     |
| `total`        | `FLOAT`   | Total price of the order (dollars).                                              |
| `payment`      | `VARCHAR` | Payment method&mdash;`Credit card`, `Transfer`, or `Cash`.                       |
| `payment_fee`  | `FLOAT`   | Percentage of `total` charged as a result of the `payment` method.               |

Your query output should be presented in the following format:

| `product_line` | `month` | `warehouse` | `net_revenue` |
| -------------- | ------- | ----------- | ------------- |
| product_one    | ---     | ---         | ---           |
| product_one    | ---     | ---         | ---           |
| product_one    | ---     | ---         | ---           |
| product_one    | ---     | ---         | ---           |
| product_one    | ---     | ---         | ---           |
| product_one    | ---     | ---         | ---           |
| product_two    | ---     | ---         | ---           |
| ...            | ...     | ...         | ...           |


## **SOLUTION**
In the query below, I aggregated the net_revenue for the sales of 'Wholesale" bicycles from the sales table, grouping by product_line, month and warehouse.

With this I was able to accurately depict the trend of top revenue generating warehouses for wholesale transactions, for each product line in each month.

```sql
-- Start coding here
SELECT 
    product_line,
    CASE 
        WHEN EXTRACT(MONTH FROM date) = 6 THEN 'June'
        WHEN EXTRACT(MONTH FROM date) = 7 THEN 'July'
        WHEN EXTRACT(MONTH FROM date) = 8 THEN 'August' 
    END AS month,
    warehouse,
    ROUND(SUM(total) - SUM(payment_fee), 2) AS net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY product_line, month, warehouse
ORDER BY product_line, month, net_revenue DESC;
```