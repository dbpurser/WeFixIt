# == Schema Information
#
# Table name: notifications
#
#  id         :bigint           not null, primary key
#  notif_type :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Notification < ApplicationRecord
end
