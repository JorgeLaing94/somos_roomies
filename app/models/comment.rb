class Comment < ActiveRecord::Base
  belongs_to :property
  validates :text, presence: true
end
