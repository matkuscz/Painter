class CreateKontakts < ActiveRecord::Migration
  def change
    create_table :kontakts do |t|
      t.string :jmeno
      t.string :prijmeni
      t.string :telefon
      t.text :adresa

      t.timestamps null: false
    end
  end
end
