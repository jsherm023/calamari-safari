class RemoveZipCodeFromCitiesTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :zip_code, :integer
  end
end
