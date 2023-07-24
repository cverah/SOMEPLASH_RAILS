class Category < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  # validations
  validates :name, presence: true
end
