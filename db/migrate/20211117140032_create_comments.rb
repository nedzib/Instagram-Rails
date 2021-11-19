class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :user
      t.integer :postID
      t.string :body

      t.timestamps
    end
  end
end
