class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, null:false
      t.references :cafepost, null:false
      t.timestamps
      
      t.index :user
      t.index :cafepost
    end
  end
end
