class CreateConstractTypes < ActiveRecord::Migration
  def change
    create_table :constract_types do |t|
      t.string :contract_type

      t.timestamps null: false
    end
  end
end
