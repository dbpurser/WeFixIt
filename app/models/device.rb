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
class Device < ApplicationRecord

    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :devices,
    )

    validates :brand, presence: true
    validates :damage, inclusion:{ in: ['broken screen', 'fried-hard-drive', 'laser-damage', 'explosion', 'spilled juice', 'other'] }
    validates :deviceType, inclusion:{ in: ['phone', 'laptop']}
    validates :model, presence: true
    validate :extra_cannot_be_blank_if_damage_is_other
    validate :consultationAvailability_must_be_a_date?
  
    def extra_cannot_be_blank_if_damage_is_other
        if damage == 'other' && extra.blank?
            errors.add(:extra, "extra must be filled out if damage type is not on the list")
        end
    end

    def consultationAvailability_must_be_a_date?
        if !consultationAvailability.is_a?(Date)
            erros.add(:consultationAvailability, 'must be a valid date')
        end
    end

end
