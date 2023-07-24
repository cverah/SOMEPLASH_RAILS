class Photo < ApplicationRecord
  belongs_to :category, counter_cache: true
  has_many :comments, as: :commentable, dependent: :destroy
  
  validates :title, presence: true
end
