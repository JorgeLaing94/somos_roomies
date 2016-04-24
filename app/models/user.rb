class User < ActiveRecord::Base
  has_many :messages, dependent: :destroy
  has_many :properties, dependent: :destroy
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
  validates :name, length: { minimum: 2 }
  validate :email_format_is_good
  has_secure_password

  def email_format_is_good
    pattern = /[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+.[a-z]+/
    errors.add(:email, 'email is not valid!') unless email =~ pattern
  end
end
