class AddUnconfirmed < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :unconfirmed_email, :string
  end
end
