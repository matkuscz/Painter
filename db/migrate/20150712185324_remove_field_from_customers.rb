class RemoveFieldFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :address, :string
  end
end
