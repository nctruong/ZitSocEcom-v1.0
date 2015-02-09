json.array!(@product_unit_associations) do |product_unit_association|
  json.extract! product_unit_association, :id, :product_id, :product_unit_id, :isDefault, :ratio, :creator_id
  json.url product_unit_association_url(product_unit_association, format: :json)
end
