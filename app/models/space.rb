# == Schema Information
#
# Table name: spaces
#
#  id          :integer          not null, primary key
#  user_id     :string(255)      not null
#  name        :string(255)      not null
#  address     :string(255)      not null
#  description :text             not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Space < ActiveRecord::Base
  validates :user_id, :name, :address, :description, presence: true
  validates :address, uniqueness: true
  
end
