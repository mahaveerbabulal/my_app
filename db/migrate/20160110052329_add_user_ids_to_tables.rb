class AddUserIdsToTables < ActiveRecord::Migration
  def change

  	add_column :clients, :user_id, :integer
  	add_column :project1s, :user_id, :integer
  	add_column :tasks, :user_id, :integer
  end
end
