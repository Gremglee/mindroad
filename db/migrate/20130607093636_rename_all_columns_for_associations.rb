class RenameAllColumnsForAssociations < ActiveRecord::Migration
  def up
  	rename_column :links, :parent_road, :road_id
  	rename_column :links, :parent_unit, :unit_id
  	rename_column :roads, :sector, :sector_id
  	rename_column :units, :parent_road, :road_id
  end

  def down
  	rename_column :links, :road_id, :parent_road
  	rename_column :links, :unit_id, :parent_unit
  	rename_column :roads, :sector_id, :sector
  	rename_column :units, :road_id, :parent_road
  end
end
