# == Schema Information
#
# Table name: devices
#
#  id                       :bigint           not null, primary key
#  brand                    :string
#  consultationAvailability :datetime
#  damage                   :string
#  deviceType               :string
#  extra                    :text
#  model                    :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  user_id                  :bigint
#
# Indexes
#
#  index_devices_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

#  user_id                  :bigint
#
# Indexes
#
#  index_devices_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Device < ApplicationRecord

    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :devices
    )


    has_many(
        :repairs,
        class_name: 'Repair',
        foreign_key: 'device_id',
        inverse_of: :device,
        dependent: :destroy
    )
  
    validates :brand, presence: true
    validates :damage, inclusion:{ in: ['broken screen', 'fried-hard-drive', 'laser-damage', 'explosion', 'spilled juice', 'other'] }
    validates :deviceType, inclusion:{ in: ['phone', 'laptop']}
    validates :model, presence: true
    validates :consultationAvailability, presence: true
    validate :extra_cannot_be_blank_if_damage_is_other

    def extra_cannot_be_blank_if_damage_is_other
        if damage == 'other' && extra.blank?
            errors.add(:extra, "extra must be filled out if damage type is not on the list")
        end
    end

    COSTS = {
    'phone' => {
      'broken screen' => 10,
      'spilled juice' => 12,
      'explosion' => 14,
      'other' => 100,
      'laser-damage' => 10000,
    },
    'laptop' => {
      'broken screen' => 15,
      'explosion' => 12,
      'fried-hard-drive' => 16,
      'laser-damage' => 10001,
      'spilled juice' => 13,
      'other' => 101,
    }
  }  
  
  def estimated_repair_cost
    COSTS[deviceType][damage]
  end
  

end
