# == Schema Information
#
# Table name: receivers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_receivers_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Receiver < ApplicationRecord

    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :receiver
    )
    has_many(
        :messages,
        class_name: 'Message',
        foreign_key: 'receiver_id',
        inverse_of: :receiver
    )

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
