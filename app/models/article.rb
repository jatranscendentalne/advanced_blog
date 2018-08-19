class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}, uniqueness: true
  validates :text, presence: true, length: {maximum: 200}
  validates_uniqueness_of :title, :text
end
