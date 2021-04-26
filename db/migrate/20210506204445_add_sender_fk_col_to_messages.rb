class AddSenderFkColToMessages < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :sender, foreign_key: true
  end
end
