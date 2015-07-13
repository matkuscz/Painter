class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :contract_num
      t.string :order_identifier
      t.datetime :review_date
      t.datetime :sample_income_date
      t.datetime :protocole_done_date
      t.datetime :agre_finish_date
      t.decimal :cost
      t.decimal :backup_cost
      t.decimal :back_pay
      t.decimal :fact_netto
      t.belongs_to :customer, index: true, foreign_key: true
      t.belongs_to :contract_type, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
