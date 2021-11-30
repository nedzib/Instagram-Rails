class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[6.1]
  def change
    change_column :people, :cellphone, :integer, limit: 8
  end
end
