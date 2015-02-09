class CreateProductCategoryAssociations < ActiveRecord::Migration
  def change
    create_table :product_category_associations do |t|
      t.references :product, index: true
      t.references :product_category, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_category_associations, :products
    add_foreign_key :product_category_associations, :product_categories
  end
end
