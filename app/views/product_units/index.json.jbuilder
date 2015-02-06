json.array!(@product_units) do |product_unit|
  json.extract! product_unit, :id, :title, :description, :visible, :creator_id
  json.url product_unit_url(product_unit, format: :json)
end
