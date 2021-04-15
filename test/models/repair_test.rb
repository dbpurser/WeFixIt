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
#
require "test_helper"

class RepairTest < ActiveSupport::TestCase

end

