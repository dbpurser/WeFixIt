# == Schema Information
#
# Table name: senders
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sender_id  :string
#
class Sender < ApplicationRecord
end
