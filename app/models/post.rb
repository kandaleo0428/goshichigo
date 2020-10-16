class Post < ApplicationRecord
  validates :content1, { presence: true }
  validates :content2, { presence: true }
  validates :content3, { presence: true }
  validates :message, { length: { maximum: 100 } }
end