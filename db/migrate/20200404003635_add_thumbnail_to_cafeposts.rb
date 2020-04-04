class AddThumbnailToCafeposts < ActiveRecord::Migration[5.2]
  def change
    add_column :cafeposts, :image, :string
  end
end
