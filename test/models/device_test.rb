# == Schema Information
#
# Table name: devices
#
#  id                       :bigint           not null, primary key
#  brand                    :string
#  consultationAvailability :datetime
#  damage                   :string
#  deviceType               :string
#  extra                    :text
#  model                    :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  user_id                  :bigint
#
# Indexes
#
#  index_devices_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

#  user_id                  :bigint
#
# Indexes
#
#  index_devices_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)

#
require "test_helper"

class DeviceTest < ActiveSupport::TestCase

  test "fixtures are valid" do
    devices.each do |device|
      assert device.valid?, device.errors.full_messages.inspect
    end
  end

  test "damage must be from list" do
    device_one = devices(:one)
    device_one.damage = 'glitter'
    assert_not device_one.valid?
  end

  test "device type must be from list" do
    device_one = devices(:one)
    device_one.deviceType = 'pear'
    assert_not device_one.valid?
  end

  test "brand must be present" do
    device_one = devices(:one)
    device_one.brand = ''
    assert_not device_one.valid?
  end

  test "model must be present" do
    device_one = devices(:one)
    device_one.model = ''
    assert_not device_one.valid?
  end

  test "extra must be present if damage is other" do
    device_one = devices(:one)
    device_one.damage = 'other'
    device_one.model = ''
    assert_not device_one.valid?
  end

  test "consultationAvailability must be present" do
    device_one = devices(:one)
    device_one.consultationAvailability = ''
    assert_not device_one.valid?
  end

end
