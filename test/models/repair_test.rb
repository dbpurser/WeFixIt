# == Schema Information
#
# Table name: repairs
#
#  id         :bigint           not null, primary key
#  completed  :boolean
#  specialist :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  device_id  :bigint
#
# Indexes
#
#  index_repairs_on_device_id  (device_id)
#
# Foreign Keys
#
#  fk_rails_...  (device_id => devices.id)
#
require "test_helper"

class RepairTest < ActiveSupport::TestCase

  test "status must be from approved list" do
    repair_one = repairs(:one)
    repair_one.status = 'yeet'
    assert_not repair_one.valid?
  end

  test "completed must be present" do
    repair_one = repairs(:one)
    repair_one.completed = ''
    assert_not repair_one.valid?
  end

  test "specialist must be present" do
    repair_one = repairs(:one)
    repair_one.specialist = ''
    assert_not repair_one.valid?
  end

end

