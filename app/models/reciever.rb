# == Schema Information
#
# Table name: recievers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_recievers_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Reciever < ApplicationRecord

    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :reciever
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
