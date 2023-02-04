class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :slug
      t.string :image
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
