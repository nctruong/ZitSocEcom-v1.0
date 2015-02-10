json.array!(@customer_groups) do |customer_group|
  json.extract! customer_group, :id, :title, :description, :reduce_percent, :visible, :creator_id
  json.url customer_group_url(customer_group, format: :json)
end
