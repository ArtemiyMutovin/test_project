class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
