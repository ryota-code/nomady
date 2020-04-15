class AddFavoritesCountToCafeposts < ActiveRecord::Migration[5.2]
  class MigrationUser < ApplicationRecord
    self.table_name = :cafeposts
  end

  def up
    _up
  rescue => e
    _down
    raise e
  end

  def down
    _down
  end

  private

  def _up
    MigrationUser.reset_column_information

    add_column :cafeposts, :favorites_count, :integer, null: false, default: 0 unless column_exists? :cafeposts, :favorites_count
  end

  def _down
    MigrationUser.reset_column_information

    remove_column :cafeposts, :favorites_count if column_exists? :cafeposts, :favorites_count
  end
end
