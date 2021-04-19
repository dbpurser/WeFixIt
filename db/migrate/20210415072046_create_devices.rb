class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :deviceType
      t.string :model
      t.string :brand
      t.string :damage
      t.text :extra
      t.datetime :consultationAvailability

      t.timestamps
    end
  end
end
