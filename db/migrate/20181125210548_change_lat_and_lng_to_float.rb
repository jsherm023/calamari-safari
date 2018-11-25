class ChangeLatAndLngToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :lat, :float
    change_column :restaurants, :lng, :float
  end
end
