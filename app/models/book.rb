class Book < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :author, presence: true
    has_many :comment
    has_many :tradeables
    has_many :favorites, as: :favorited
    scope :tradeablestat, -> {where(tradeablestatus: true)}
end
