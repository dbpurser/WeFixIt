# == Schema Information
#
# Table name: consultations
#
#  id          :bigint           not null, primary key
#  date        :date
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  device_id   :integer
#
class Consultation < ApplicationRecord
    # belongs_to :device
    # #this says that the consultation belongs to a user based on the user the device is associated with
    # belongs_to :user, through: :device 

    validates :description, presence: true, allow_blank: false
    
end
