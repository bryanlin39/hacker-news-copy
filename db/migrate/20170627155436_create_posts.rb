class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :link
      t.integer :votes
      t.datetime :date

      t.timestamps
    end
  end
end
