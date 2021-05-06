# == Schema Information
#
# Table name: messages
#
#  id         :bigint           not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Message < ApplicationRecord




    def sender_name
        sender.first_name
    end

    def reciever_name
        reciever.first_name
    end

    def sender_email
        sender.email
    end

    def reciever_email
        reciever.email
    end

    def sender_user_name
        sender.user_name
    end

    def reciever_user_name
        reciever.user_name
    end
end
