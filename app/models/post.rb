class Post < ApplicationRecord
  validates :content, presence: true
  validates :content, length: { maximum: 140 }

  belongs_to :user

  def display_created_at
    I18n.l(self.created_at, format: :default)
  end

  def auther_name
    user.display_name
  end
end
