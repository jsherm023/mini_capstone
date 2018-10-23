class AddSupplierForProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers_new do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.timestamps
    end
  end
end
