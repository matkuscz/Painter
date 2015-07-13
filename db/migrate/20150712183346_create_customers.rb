class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :web
      t.integer :fax
      t.belongs_to :address, index: true, foreign_key: true
      t.string :address

      t.timestamps null: false
    end
  end
end
