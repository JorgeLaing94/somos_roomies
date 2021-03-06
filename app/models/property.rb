# Class to represent properties
class Property < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
  validates :title, :description, :city, :address, :price, presence: true
  validate :price_is_not_negative

  def price_is_not_negative
    errors.add(:price, 'price is less than 0!') unless price.nil? || price >= 0
  end
end
