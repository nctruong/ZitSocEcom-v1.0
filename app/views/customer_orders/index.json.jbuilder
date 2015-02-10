json.array!(@customer_orders) do |customer_order|
  json.extract! customer_order, :id, :customer_id, :total_excl, :total_incl, :reduce_price, :reduce_percent, :total_reduced, :prepaid, :created, :status, :note, :creator_id
  json.url customer_order_url(customer_order, format: :json)
end
