class AddDetailsToCafeposts < ActiveRecord::Migration[5.2]
  def change
    add_column :cafeposts, :wifi, :boolean
    add_column :cafeposts, :power, :boolean
  end
end
