class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :star
      t.string :review
      t.string :must_visit
      t.string :source
      t.integer :restaurant_id
      t.integer :user_id
      t.timestamps
    end
  end
end
