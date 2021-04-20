class RemoveDeviceIdFromConsultations < ActiveRecord::Migration[6.1]
  def change
    remove_column :consultations, :device_id, :integer
  end
end
