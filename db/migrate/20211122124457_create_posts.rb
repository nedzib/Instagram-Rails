class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :body
      t.references :person, null: false, foreign_key: { to_table: :people }
      t.timestamps
    end
  end
end
