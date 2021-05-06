# == Schema Information
#
# Table name: senders
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sender_id  :string
#  user_id    :bigint
#
# Indexes
#
#  index_senders_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class SenderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
