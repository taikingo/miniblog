class Profile < ApplicationRecord
  validates :nickname, presence: true
  validates :introduction, length: { maximum: 200 }
  validates :nickname, length: { maximum: 20 }
  validates :nickname, format: { with: /\A[a-zA-Z]+\z/ }
  belongs_to :user
end
