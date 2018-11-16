class Cocktail < ApplicationRecord
  before_validation { self.name = name.downcase unless name.nil? }
  validates :name, uniqueness: true, presence: true, allow_nil: false, allow_blank: false
  validates :name, presence: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  accepts_nested_attributes_for :doses

  def average_rating
    average = 0
    return average if reviews.count.zero?

    average.to_f
    reviews.each { |review| average += review.rating }
    (average / reviews.count).floor
  end
end
