json.array!(@warehouse_bills) do |warehouse_bill|
  json.extract! warehouse_bill, :id, :warehouse_id, :customer_order_id, :total_excl, :total_incl, :reduce_price, :reduce_percent, :total_reduced, :status, :note, :created, :creator_id
  json.url warehouse_bill_url(warehouse_bill, format: :json)
end
