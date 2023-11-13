class Recipe < ApplicationRecord
  belongs_to :user

  validates :preparationTime, presence: true
  validates :cookTime, presence: true
  validates :description, presence: true, length: { minimum: 250 }
  validates :public, inclusion: { in: [true, false] }
  validates :user, presence: true
end
