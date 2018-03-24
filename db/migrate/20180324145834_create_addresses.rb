class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :complement
      t.string :reference_point
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
