class AddColumnsToCafeposts < ActiveRecord::Migration[5.2]
  def change
    add_column :cafeposts, :postcode, :integer
    add_column :cafeposts, :address_all, :string
    add_column :cafeposts, :latitude, :float
    add_column :cafeposts, :longitude, :float
  end
end
