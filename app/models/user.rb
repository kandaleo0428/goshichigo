class User < ApplicationRecord
    validates :name, { presence: true } #名前の空欄は許されない
    validates :email, { presence: true, uniqueness: true } #空欄と重複は許されない
    validates :password, {presence: true} #パスワード欄の空欄は許されない

  def posts
    return Post.where(user_id: self.id)
  end

end
