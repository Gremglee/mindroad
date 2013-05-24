class CreateRoads < ActiveRecord::Migration
  def change
    create_table :roads do |t|
      t.string :title
      t.integer :sector

      t.timestamps
    end
  end
end
