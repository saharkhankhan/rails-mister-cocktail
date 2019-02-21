class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, presence: true, uniqueness: true

  # You can't delete an ingredient if it used by at least one cocktail.

end
