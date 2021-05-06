class AddUserFkColToRecievers < ActiveRecord::Migration[6.1]
  def change
    add_reference :recievers, :user, foreign_key: true
    
  end
end
