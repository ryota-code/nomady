class AddDetailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :detail, :string
  end
end
