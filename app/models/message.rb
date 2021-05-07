# == Schema Information
#
# Table name: messages
#
#  id          :bigint           not null, primary key
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  receiver_id :bigint
#  sender_id   :bigint
#
# Indexes
#
#  index_messages_on_receiver_id  (receiver_id)
#  index_messages_on_sender_id    (sender_id)
#
# Foreign Keys
#
#  fk_rails_...  (receiver_id => receivers.id)
#  fk_rails_...  (sender_id => senders.id)
#
class Message < ApplicationRecord

    belongs_to(
        :sender,
        class_name: 'Sender',
        foreign_key: 'sender_id',
        inverse_of: :messages
      )
      belongs_to(
        :receiver,
        class_name: 'Receiver',
        foreign_key: 'receiver_id',
        inverse_of: :messages
      )
    

    def sender_name
        sender.first_name
    end

    def receiver_name
        reciever.first_name
    end

    def sender_email
        sender.email
    end

    def receiver_email
        reciever.email
    end

    def sender_user_name
        sender.user_name
    end

    def receiver_user_name
        reciever.user_name
    end

end
