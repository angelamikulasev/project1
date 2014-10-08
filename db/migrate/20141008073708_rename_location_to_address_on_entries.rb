class RenameLocationToAddressOnEntries < ActiveRecord::Migration
  def change
  	rename_column :entries, :location, :address
  end
end
