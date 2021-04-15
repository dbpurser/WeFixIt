# == Schema Information
#
# Table name: devices
#
#  id                       :bigint           not null, primary key
#  brand                    :string
#  consultationAvailability :datetime
#  damage                   :string
#  extra                    :text
#  model                    :string
#  type                     :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
class Device < ApplicationRecord
end
