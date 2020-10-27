class User < ApplicationRecord
    has_secure_password
    
    validates :name, { presence: true } #名前の空欄は許されない
    validates :email, { presence: true, uniqueness: true } #空欄と重複は許されない

  def posts
    return Post.where(user_id: self.id)
  end

end
