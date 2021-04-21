# == Schema Information
#
# Table name: repairs
#
#  id         :bigint           not null, primary key
#  completed  :boolean
#  specialist :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  device_id  :bigint
#
# Indexes
#
#  index_repairs_on_device_id  (device_id)
#
# Foreign Keys
#
#  fk_rails_...  (device_id => devices.id)
#
class Repair < ApplicationRecord

    belongs_to(
        :device,
        class_name: 'Device',
        foreign_key: 'device_id',
        inverse_of: :repairs
    )

    validates :completed, presence: true
    validates :status, inclusion:{ in: ['In Progress', 'Processing', 'Complete', 'Ready for Pickup'] }
    validates :specialist, presence: true
end
