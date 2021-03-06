class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true # validates :ingredient, :uniqueness => { :scope => :cocktail }
  validates :cocktail, uniqueness: { scope: :ingredient }
end
