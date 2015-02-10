json.array!(@warehouse_receipts) do |warehouse_receipt|
  json.extract! warehouse_receipt, :id, :warehouse_id, :supplier_order_id, :total_excl, :total_incl, :reduce_price, :reduce_percent, :total_reduced, :status, :created, :creator_id
  json.url warehouse_receipt_url(warehouse_receipt, format: :json)
end
