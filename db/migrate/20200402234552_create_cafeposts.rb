class CreateCafeposts < ActiveRecord::Migration[5.2]
  def change
    create_table :cafeposts do |t|
      t.text :title
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
