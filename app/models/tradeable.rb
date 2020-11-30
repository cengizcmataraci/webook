class Tradeable < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum tradestatus: [:waiting, :approve, :deny]
end
