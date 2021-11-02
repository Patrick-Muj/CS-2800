-- 1 Display the inventory price of inventory item (inv_id) # 

select inv_price from inventory where inv_id = 1;

-- 2 Determine which customers were born in the 1970

select * from customer where c_birthdate >= to_date ('01/01/1970', 'mm/dd/yyyy') and c_birthdate <= to_date ('12/31/1979', 'mm/dd/yyy');

-- 3 Determine which shipments have not yet been received.  List the uniqueshipment ID  and the sl_date_receive

select ship_id, sl_date_received from shipment_line where sl_date_received is not null;

-- 4 List the orders with the order number and order date for orders received on May 29, 2006

select o_id, o_date from orders where o_date = to_date ('29/may/2006','dd/mm/yyyy');

-- 5 List the last and first names of all customers from Florida and George

select c_last, c_first from customer where c_state = 'FL' or c_state = 'GA';

-- 6 List the inventory id and item id and size where the size is not listed

select inv_id, item_id from inventory where inv_size is null;

-- 7 List the items that have an inventory price greater than $60.00 and are available in a size of L or XL.   Also, list the price and size

select inv_size, inv_price from inventory where (inv_size = 'L' or inv_size = 'LX') and inv_price > 60.00;


--8 In the INVENTORY table, item_id  5 is available in how many different distinct colors? List the item and the color.Order it by color

select inv_id, item_id, color from inventory where item_id = 5;

-- 9 List the items including color, size and price from the inventory table where the items cost more than $200.00. 

select color, inv_size, inv_price from inventory where inv_price > 200.00;
