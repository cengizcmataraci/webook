class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  scope :approved, -> {where(status: true)}
  scope :unapproved, -> {where(status: false)}
  scope :waiting_for_approval, -> (user_id) { where(status: false, user_id: user_id) }
end
