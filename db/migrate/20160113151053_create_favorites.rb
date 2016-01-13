class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :user
      t.string :references
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :favorites, :references
  end
end
