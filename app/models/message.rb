# == Schema Information
#
# Table name: messages
#
#  id         :bigint           not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sender_id  :bigint
#
# Indexes
#
#  index_messages_on_sender_id  (sender_id)
#
# Foreign Keys
#
#  fk_rails_...  (sender_id => senders.id)
#
class Message < ApplicationRecord

    belongs_to(
        :receiver,
        class_name: 'receiver',
        foreign_key: 'receiver_id',
        inverse_of: :messages
      )

end
