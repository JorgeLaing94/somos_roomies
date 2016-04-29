# Class to represent messages
class Message < ActiveRecord::Base
  belongs_to :user
  validates :sender, :subject, :text, :recipient_email, presence: true
  validate :email_exists

  def email_exists
    r = recipient_email
    errors.add(:email, 'No user with that email.') unless User.exists?(email: r)
  end
end
