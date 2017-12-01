class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street_address
      t.integer :zip
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
