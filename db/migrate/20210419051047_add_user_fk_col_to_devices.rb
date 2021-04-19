class AddUserFkColToDevices < ActiveRecord::Migration[6.1]
  def change
    add_reference :devices, :user, foreign_key: true
  end
end
