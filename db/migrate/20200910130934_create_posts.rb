class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :topic
      t.string :title
      t.text :content
      t.text :solution
      t.integer :number

      t.timestamps
    end
  end
end
