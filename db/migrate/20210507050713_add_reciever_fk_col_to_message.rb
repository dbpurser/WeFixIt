class AddRecieverFkColToMessage < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :receiver, foreign_key: true
  end
end
