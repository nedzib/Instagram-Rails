class CreateLike < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :person, null: false, foreign_key: { to_table: :people }
      t.references :post, null: false, foreign_key: { to_table: :posts }
      t.timestamps
    end
  end
end
