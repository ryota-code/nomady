class AddColumnsToCafeposts < ActiveRecord::Migration[5.2]
  def change
    add_column :cafeposts, :postcode, :integer
    add_column :cafeposts, :prefecture_code, :integer 
    add_column :cafeposts, :address_city, :string 
    add_column :cafeposts, :address_street, :string 
    add_column :cafeposts, :address_building, :string 
  end
end
