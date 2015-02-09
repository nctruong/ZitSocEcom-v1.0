json.array!(@products) do |product|
  json.extract! product, :id, :code, :title, :description, :content, :price, :wholesale_price, :thumb, :default_unit_id, :visible, :creator_id
  json.url product_url(product, format: :json)
end
