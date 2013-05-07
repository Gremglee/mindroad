class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.integer :parent_unit
      t.integer :parent_road
      t.integer :url_type

      t.timestamps
    end
  end
end
