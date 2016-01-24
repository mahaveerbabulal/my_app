class CreateVendors < ActiveRecord::Migration
  def change
  	drop_table :vendors
    create_table :vendors do |t|
      t.string :name
      t.string :company
      t.string :mobile
      t.string :email

      t.timestamps null: false
    end
  end
end
