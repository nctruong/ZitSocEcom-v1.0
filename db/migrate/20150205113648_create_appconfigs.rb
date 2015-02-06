class CreateAppconfigs < ActiveRecord::Migration
  def change
    create_table :appconfigs do |t|
      t.string :name
      t.text :description
      t.string :key
      t.string :value
      t.boolean :visible, default: true

      t.timestamps null: false
    end
  end
end
