class CreateProject1s < ActiveRecord::Migration
  def change
    create_table :project1s do |t|
    	t.string :name
      t.text :description
      t.date :start_date
      t.string :status

      t.timestamps null: false
    end
  end
end
