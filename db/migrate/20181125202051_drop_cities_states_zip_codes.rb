class DropCitiesStatesZipCodes < ActiveRecord::Migration[5.2]
  def change
    drop_table :cities
    drop_table :states
    drop_table :zip_codes
  end
end
