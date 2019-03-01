class Dose < ApplicationRecord
belongs_to :ingredient
belongs_to :cocktail

validates :cocktail_id, presence: true
validates :ingredient_id, presence: true

valivalidates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
end
