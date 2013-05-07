class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :title
      t.text :description
      t.integer :parent_road

      t.timestamps
    end
  end
end
