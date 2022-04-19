class PeopleData < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :name, :string
    add_column :people, :cellphone, :integer
    add_column :people, :username, :string
  end
end
