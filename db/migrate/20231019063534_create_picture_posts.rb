class CreatePicturePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :picture_posts do |t|
      t.text :content
      t.text :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
