json.array!(@supplier_orders) do |supplier_order|
  json.extract! supplier_order, :id, :supplier_id, :total_excl, :total_incl, :reduce_price, :reduce_percent, :total_reduced, :prepaid, :created, :status, :note, :creator_id
  json.url supplier_order_url(supplier_order, format: :json)
end
