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

require 'test_helper'

class SpaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
