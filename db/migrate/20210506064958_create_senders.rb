class CreateSenders < ActiveRecord::Migration[6.1]
  def change
    create_table :senders do |t|
      t.string :sender_id

      t.timestamps
    end
  end
end
