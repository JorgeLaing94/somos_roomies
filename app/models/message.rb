class Message < ActiveRecord::Base
  belongs_to :user
  validates :sender, :subject, :text, :recipient_email, presence: true

  def email_exists
    errors.add(:email, 'There are no users with that email.') unless User.exists(email: :email)
  end
end
