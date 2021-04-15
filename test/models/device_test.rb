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
#
require "test_helper"

class DeviceTest < ActiveSupport::TestCase

  test "fixtures are valid" do
    devices.each do |device|
      assert device.valid?, device.errors.full_messages.inspect
    end
  end

end
