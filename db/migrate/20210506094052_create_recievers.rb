class CreateRecievers < ActiveRecord::Migration[6.1]
  def change
    create_table :recievers do |t|

      t.timestamps
    end
  end
end
