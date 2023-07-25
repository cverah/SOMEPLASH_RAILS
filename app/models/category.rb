class Category < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_one_attached :cover
  # validations
  validates :name, :cover, presence: true
end
