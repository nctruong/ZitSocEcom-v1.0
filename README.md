# ZitSoc E-commerce version 1.0

## Database

- users
- user_roles
- permissions

- product_units
	title
	description:text
	visible:boolean

- product_categories
	title
	description
	parent:references
	weight:integer
	visible:boolean

- warehouses
	title
	description:text
	addresss
	phone
	fax
	visible:boolean

- products
	code
	title
	description:text
	content:text
	price:integer
	wholesale_price:integer
	thumb
	default_unit:references
	visible:boolean

- product_category_associations
	product:references
	product_category:references

- product_unit_associations
	product:references
	product_unit:references
	default:boolean
	ratio:integer

- suppliers
	code
	title
	address
	phone
	fax
	email
	taxcode
	debit:integer
	visible:boolean

- supplier_orders
	supplier:rederences
	total_excl:integer
	total_incl:integer
	reduce_price:integer
	reduce_percent:integer
	total_reduced:integer
	prepaid:integer
	created:datetime
	status:string
	note:text

- supplier_order_details
	supplier_order:references
	warehouse:references
	product:references
	product_unit:references
	quanity:integer
	price:integer
	subtotal:integer
	reduce_price:integer
	reduce_percent:integer
	tax:integer
	subtotal_reduced:integer
	subtotal_taxincl:integer
	note:text

- supplier_paid_logs
	supplier:references
	beforepaid:integer
	paid:integer
	afterpaid:integer
	note:text

- supplier_order_paid_logs
	supplier_paid_log:references
	supplier_order:references
	beforpaid:integer
	paid:integer
	afterpaid:integer

- supplier_product_associations
	supplier:references
	product:references
	product_unit:references
	price:integer


- customers
	code
	title
	address
	phone
	fax
	email
	taxcode
	debit:integer
	visible:boolean

- customer_groups
	title
	description:text
	reduce_percent:integer
	visible:boolean

- customer_group_associations
	customer:references
	customer_group:references

- customer_orders
	customer:references
	total_excl:integer
	total_incl:integer
	reduce_price:integer
	reduce_percent:integer
	total_reduced:integer
	prepaid:integer
	created:datetime
	status:string
	note:text

- customer_order_details
	customer_order:references
	warehouse:references
	product:references
	product_unit:references
	quanity:integer
	price:integer
	reduce_price:integer
	reduce_percent:integer
	tax:integer
	subtotal:integer
	subtotal_reduced:integer
	subtotal_taxincl:integer
	note:text

- customer_paid_logs
	customer:references
	beforepaid:integer
	paid:integer
	afterpaid:integer
	note:text

- customer_debit_logs
	customer_paid_log:references
	customer_order:references
	beforpaid:integer
	paid:integer
	afterpaid:integer

- warehouse_receipts
	warehouse:references
	supplier_order:references
	total_excl:integer
	total_incl:integer
	reduce_price:integer
	reduce_percent:integer
	total_reduced:integer
	status:integer
	note:text
	created:datetime

- warehouse_receipt_details
	warehouse_receipt:references
	product:references
	product_unit:references
	order_quantity:integer
	real_quantity:integer
	price:integer
	reduce_price:integer
	reduce_percent:integer
	tax:integer
	subtotal:integer
	subtotal_reduced:integer
	subtotal_taxincl:integer
	note:text
	
- warehouse_bills
	warehouse:references
	customer_order:references
	total_excl:integer
	total_incl:integer
	reduce_price:integer
	reduce_percent:integer
	total_reduced:integer
	status:integer
	created:datetime

- warehouse_bill_details
	warehouse_receipt:references
	product:references
	product_unit:references
	order_quantity:integer
	real_quantity:interger
	price:integer
	reduce_price:integer
	reduce_percent:integer
	tax:integer
	subtotal:integer
	subtotal_reduced:integer
	subtotal_taxincl:integer
	note:text

- stocks
	product:references
	warehouse_receipt:references
	price:integer
	imported_quantity:integer
	exported_quantity:integer
	avaible_quantity:integer
	reduce_price:integer
	reduce_percent:integer
	tax:integer
	subtotal:integer
	subtotal_reduced:integer
	subtotal_taxincl:integer

- warehouse_moverment_types:
	title
	description:text
	type // enum [:increase, :decrease]
	visible:boolean

- warehouse_moverments
	warehouse:references
	stock:references
	increase_quantity:integer
	decrease_quantity:integer
	warehouse_moverment_type:references



	======================
	Next version features
	======================
- 	Vochour
- 	Special Price