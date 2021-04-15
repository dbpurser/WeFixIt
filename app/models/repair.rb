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
#
class Repair < ApplicationRecord
    validates :completed, presence: true
    validates :status, inclusion:{ in: ['In Progress', 'Processing', 'Complete', 'Ready for Pickup'] }
    validates :specialist, presence: true
end
