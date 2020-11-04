class Addpost < ApplicationRecord
  validates :content1, { presence: true }
  validates :content2, { presence: true }
  validates :content3, { presence: true }
  validates :content4, { presence: true }
  validates :content5, { presence: true }
  validates :addmessage, { length: { maximum: 100 } }

  
  
end
