# == Schema Information
#
# Table name: fixins
#
#  id         :integer          not null, primary key
#  name       :string
#  amount     :string
#  recipe_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FixinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
