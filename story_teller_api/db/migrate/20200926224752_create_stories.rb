class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :opening_line
      t.string :image
      t.string :genre
      t.string :author

      t.timestamps
    end
  end
end
