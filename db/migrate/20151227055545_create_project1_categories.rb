class CreateProject1Categories < ActiveRecord::Migration
  def change
    create_table :project1_categories do |t|
      t.integer :project1_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
