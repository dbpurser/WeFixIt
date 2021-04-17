# == Schema Information
#
# Table name: consultations
#
#  id          :bigint           not null, primary key
#  date        :date
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  device_id   :integer
#
require "test_helper"

class ConsultationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
