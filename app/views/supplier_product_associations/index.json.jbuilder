json.array!(@supplier_product_associations) do |supplier_product_association|
  json.extract! supplier_product_association, :id, :supplier_id, :product_id, :product_unit_id, :price, :creator_id
  json.url supplier_product_association_url(supplier_product_association, format: :json)
end
