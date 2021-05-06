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
require "test_helper"

class RecieverTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
