class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.references :person, null: false, foreign_key: { to_table: :people }
      t.references :post, null: false, foreign_key: { to_table: :posts }
      t.timestamps
    end
  end
end
