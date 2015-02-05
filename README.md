# ZitSoc E-commerce version 1.0

## Database

- users: Devise
- user_roles title description:text visible:boolean
- user_role_permissions subject_class action
	

- products
	title
	description:text
	content:text
	price:integer
	wholesale_price:integer
	thumb
	default_unit:references
	quantity:integer
	supplier:references
	manufactory:references
	visible:boolean

- product_categories
	title
	description
	parent:references
	weight:integer
	visible:boolean

- product_category_associations
	product:references
	product_category:references

- product_units
	title
	description:text
	visible:boolean

- product_unit_associations
- special_prices
- vouchers
- manufactories

- suppliers
- supplier_orders
- supplier_order_details
- suppliers_debit_logs
- supplier_product_associations


- warehouses
- warehouse_receipts
- warehouse_receipt_details
- warehouse_bills
- warehouse_bill_details
- warehouse_moverments

- customers
- customer_debit_logs
- customer_groups
- customer_orders
- customer_order_details

