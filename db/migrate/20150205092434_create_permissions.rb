class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.references :user_role, index: true
      t.string :name
      t.string :subject_class
      t.integer :subject_id
      t.string :action
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :permissions, :user_roles
  end
end
