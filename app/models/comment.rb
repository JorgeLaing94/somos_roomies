# Class to represent comments
class Comment < ActiveRecord::Base
  belongs_to :property
  belongs_to :comment
  validates :text, presence: true
end
