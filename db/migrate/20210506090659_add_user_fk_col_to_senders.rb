class AddUserFkColToSenders < ActiveRecord::Migration[6.1]
  def change
    add_reference :senders, :user, foreign_key: true
  end
end
