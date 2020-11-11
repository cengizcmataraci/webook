class Book < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :author, presence: true
    has_many :comment
    has_many :tradeables
    scope :tradeablestat, -> {where(tradeablestatus: true)}
end
