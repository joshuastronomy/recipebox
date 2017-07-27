# == Schema Information
#
# Table name: steps
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  recipe_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Step < ApplicationRecord
  belongs_to :recipe
end
