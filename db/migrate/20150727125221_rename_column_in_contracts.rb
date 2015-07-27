class RenameColumnInContracts < ActiveRecord::Migration
  def change
  	rename_column :contracts, :contract_type_id, :constract_type_id

  end
end
