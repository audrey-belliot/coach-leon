class PlansRecipe < ApplicationRecord
  belongs_to :plan
  belongs_to :recipe
end
