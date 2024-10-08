class Post < ApplicationRecord
  validates :content, presence: true
  validates :content, length: { maximum: 140 }

  def display_created_at
    I18n.l(self.created_at, format: :default)
  end
end
