class Message < ActiveRecord::Base
  belongs_to :user
  validates :sender, :subject, :text, presence: true
end
