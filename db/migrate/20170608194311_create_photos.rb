class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :destination_id
      t.integer :photographer_id
      t.text :caption
      t.string :image

      t.timestamps

    end
  end
end
