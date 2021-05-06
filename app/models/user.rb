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

#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string

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
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  has_many(
    :devices,
    class_name: 'Device',
    foreign_key: 'user_id',
    inverse_of: :user,
    dependent: :destroy
  )
  

  has_one(
    :reciever,
    class_name: 'Reciever',
    foreign_key: 'user_id',
    inverse_of: :user,
    dependent: :destroy
  )

  #presence validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true

  #length validations
  validates :phone_number, length: { minimum: 12 }

  # validate :user_is_admin_must_be_true_or_false
  validate :user_specialty_presence_if_is_admin_is_true
  
  def full_name
    first_name + " " + last_name
  end

  def user_is_admin_must_be_true_or_false
    if [true, false].include? is_admin
      
    else
      errors.add(:is_admin, "must be a boolean")
    end
  end

  # if the user is an admin, then specialty must not be blank
  def user_specialty_presence_if_is_admin_is_true
    if is_admin == true
      if specialty.blank?
        errors.add(:specialty, "must be present")
      end
    end
  end

end
