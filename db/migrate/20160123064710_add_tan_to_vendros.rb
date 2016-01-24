class AddTanToVendros < ActiveRecord::Migration
  def change
    add_column :vendors, :tan_number, :string
  end
end
