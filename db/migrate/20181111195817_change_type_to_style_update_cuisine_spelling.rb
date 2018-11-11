class ChangeTypeToStyleUpdateCuisineSpelling < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :type, :style
    rename_column :restaurants, :cuizine, :cuisine
  end
end
