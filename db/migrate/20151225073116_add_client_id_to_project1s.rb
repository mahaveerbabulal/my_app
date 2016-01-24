class AddClientIdToProject1s < ActiveRecord::Migration
  def change
  	#add_column :table_name, :column_name, :column_type
  	add_column :project1s, :client_id, :integer
  	add_column :clients, :fax_no, :string

  	#remove_column :table_name, :column_name
  end
end
