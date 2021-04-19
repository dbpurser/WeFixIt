class AddSpecialtyToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :specialty, :string
  end
end
