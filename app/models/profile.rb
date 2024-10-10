class Profile < ApplicationRecord
  validates :nickname, presence: true
  validates :introduction, length: { maximum: 200 }

  belongs_to :user
end
