class RemoveThumbnailFromCafeposts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cafeposts, :thumbnail, :string
  end
end
