class RenameLatLongToLatitudeLongitudeOnEntries < ActiveRecord::Migration
  def change
  	rename_column :entries, :lat, :latitude
  	rename_column :entries, :long, :longitude
  end
end
