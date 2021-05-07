# == Schema Information
#
# Table name: consultations
#
#  id          :bigint           not null, primary key
#  date        :date
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Consultation < ApplicationRecord
    # belongs_to :device
    # #this says that the consultation belongs to a user based on the user the device is associated with
    # belongs_to :user, through: :device 

    validates :description, presence: true, allow_blank: false
    validates :date, presence: true, allow_nil: false
    validate :date_not_in_past
    def date_not_in_past
        return if date.nil?
        return if Date.today <= date
        errors.add(:date, "Error! Incorrect Date Chosen.")

    end
end
