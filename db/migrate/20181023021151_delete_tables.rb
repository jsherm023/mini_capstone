class DeleteTables < ActiveRecord::Migration[5.2]
  def change
    drop_table(:suppliers_new)
  end
end
