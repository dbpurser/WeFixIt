# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address                :string
#  city                   :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  is_admin               :boolean
#  last_name              :string
#  phone_number           :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  specialty              :string
#  state                  :string
#  zip_code               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

#  address                :string
#  city                   :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  is_admin               :boolean
#  last_name              :string
#  phone_number           :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  specialty              :string
#  state                  :string
#  zip_code               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require "test_helper"

class UserTest < ActiveSupport::TestCase


  test "user fixtures are valid" do
    users.each do |user|
      assert user.valid?, user.errors.full_messages.inspect
    end
  end

  test "User first name must be present" do
    user1 = users(:one)
    user1.first_name = ''
    assert_not user1.valid?
  end

  test "User last name must be present" do
    user1 = users(:one)
    user1.last_name = ''
    assert_not user1.valid?
  end

  test "User address must be present" do
    user1 = users(:one)
    user1.address = ''
    assert_not user1.valid?
  end

  test "User city must be present" do
    user1 = users(:one)
    user1.city = ''
    assert_not user1.valid?
  end

  test "User state must be present" do
    user1 = users(:one)
    user1.state = ''
    assert_not user1.valid?
  end

  test "User zip code must be present" do
    user1 = users(:one)
    user1.zip_code = ''
    assert_not user1.valid?
  end

  test "User phone must be at least 12 characters long" do
    user1 = users(:one)
    user1.phone_number = ''
    assert_not user1.valid?
    user1.phone_number = '01234567891' #this is 11 characters long
    assert_not user1.valid?
  end

  ## pretty much just a glorified presence validations, 
  ## will become useless if we change to a 2 devise User
  ## solution (admin and customer individual devise classes)
  test "User is_admin must be true or false" do
    user1 = users(:one)
    user1.is_admin = ''
    assert_not user1.valid?
  end

  test "User specialty presence if is_admin is true" do
    user1 = users(:one)
    user1.specialty = ''
    assert_not user1.valid?
  end

end
