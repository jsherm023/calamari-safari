class CreateZipCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :zip_codes do |t|
      t.integer :number
      t.integer :city_id

      t.timestamps
    end
  end
end
