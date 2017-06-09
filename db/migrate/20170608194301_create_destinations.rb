class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :country
      t.string :climate
      t.string :scenery
      t.text :description
      t.string :distance
      t.string :activities

      t.timestamps

    end
  end
end
