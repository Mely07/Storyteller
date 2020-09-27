class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :likes
      t.integer :dislikes
      t.integer :funny_rating
      t.integer :scary_rating
      t.integer :story_id
      t.string :author
      t.text :text

      t.timestamps
    end
  end
end
