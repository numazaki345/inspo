class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :store_name,           null: false
      t.text   :text,                 null: false
      t.string :address,              null: false
      t.string :url
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
