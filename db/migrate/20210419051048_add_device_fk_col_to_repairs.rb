class AddDeviceFkColToRepairs < ActiveRecord::Migration[6.1]
  def change
    add_reference :repairs, :device, foreign_key: true
  end
end
