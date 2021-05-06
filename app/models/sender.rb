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



    def first_name
        user.first_name
    end

    def user_name
        email_container = Mail::Address.new
        email_container.address = user.email
        email_container.local
    end

    def email
        user.email
    end
end
