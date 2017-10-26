use student;

/* Select All Data From Cost Table */
/* select * from cost_table;  */


/* Select All Data From Customer's Table */
/* select * from customers */


/* Display name of the organizations in upper case letters */ 
/*select ucase(name) from organizations; */


/* Display Total Weight of Shipment Items */
/* select sum(weight) from shipment_items; */


/* Display Minimum Height of All Shipment Items */
/* select min(height) from shipment_items; */

/* Display Maximum Width of All Shipment Items */
/* select max(width) from shipment_items; */

/* Display All the Distinct "from state" of the Shipments */
select distinct(from_state) from shipments;