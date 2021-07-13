class Meal < ApplicationRecord
  # Relationships
  has_many :days
  has_many :recipes, dependent: :destroy
  accepts_nested_attributes_for :recipes

  # Validations
  validates :name, presence: true

  def self.alphabetical_order
    Meal.all.order(:name)
  end
end
