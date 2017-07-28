# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Recipe < ApplicationRecord
  has_many :fixins, inverse_of: :recipe, :dependent => :delete_all
  has_many :steps, inverse_of: :recipe, :dependent => :delete_all
  accepts_nested_attributes_for :fixins, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :steps, reject_if: :all_blank, allow_destroy: true
end
