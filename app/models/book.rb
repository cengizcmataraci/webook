class Book < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :author, presence: true
    has_many :comment
    has_many :tradeables
    has_many :favorites, as: :favorited
    scope :tradeablestat, -> {where(tradeablestatus: true)}

    def bookname
      self.bookname = self.title.split("").map(&:capitalize).split(" ").map(&:first).join()
    end
end
