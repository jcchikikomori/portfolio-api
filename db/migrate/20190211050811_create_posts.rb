class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.boolean :has_link, default: false
      t.boolean :deleted, default: false
      t.timestamps
    end
  end
end
