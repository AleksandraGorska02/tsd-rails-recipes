class Ingredient < ApplicationRecord
  belongs_to :recipe
  validate :ingredient_limit_per_recipe
  private

  def ingredient_limit_per_recipe
    if recipe.ingredients.count >= 3
      errors.add(:base, "You can only add up to 3 ingredients per recipe.")
    end
  end
end
