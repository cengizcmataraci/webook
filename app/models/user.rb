class User < ApplicationRecord
  before_create :username

  validates_length_of :username, 
    :minimum => 5, :maximum => 50, 
    presence: true,
    uniqueness: true

  validates :email, presence: true

  has_many :books
  has_many :comment
  has_many :tradeables

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def username
    self.username = self.email.split('@').first
  end
end
