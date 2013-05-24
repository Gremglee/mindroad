class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.integer :road_id
      t.integer :index_number_in_road
      t.integer :first_line
      t.integer :second_line
      t.integer :third_line
      t.integer :fourth_line

      t.timestamps
    end
  end
end
