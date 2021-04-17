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
  test "assert description cannot be nil or blank" do
    c = Consultation.new(date: Date.tomorrow)
    assert_not c.valid?
    c.description = ""
    assert_not c.valid?
    c.description = "repair phone screen"
    assert c.valid?
  end
end
