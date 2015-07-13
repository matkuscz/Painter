class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :street
      t.string :city
      t.integer :postal_code
      t.integer :description_number
      t.string :country

      t.timestamps null: false
    end
  end
end
