class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :cuizine
      t.string :type

      t.timestamps
    end
  end
end
