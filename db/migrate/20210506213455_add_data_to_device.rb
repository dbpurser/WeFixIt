class AddDataToDevice < ActiveRecord::Migration[6.1]
  def change
    add_column :devices, :approved, :boolean
    add_column :devices, :denial_reason, :string
  end
end
