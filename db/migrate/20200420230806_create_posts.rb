class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.text :description

      t.timestamps
    end
  end
end
