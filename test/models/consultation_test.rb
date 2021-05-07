# == Schema Information
#
# Table name: consultations
#
#  id          :bigint           not null, primary key
#  date        :date
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require_relative "../test_helper"

class ConsultationTest < ActiveSupport::TestCase
  test "assert description cannot be nil or blank" do
    c = Consultation.new(date: Date.tomorrow)
    assert_not c.valid?

    c.description = ""
    assert_not c.valid?

    c.description = "repair phone screen"
    assert c.valid?
  end

  test "consultation date cannot be in the past" do
    c = Consultation.new(description: "repair phone screen", date: Date.yesterday)
    assert_not c.valid?

    c.date = Date.tomorrow
    assert c.valid?
  end

  test "fixtures are valid" do
    c = consultations(:one)
    assert c.valid?, c.errors.full_messages.inspect
  end

end
