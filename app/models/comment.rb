class Comment < ApplicationRecord
    validates :comment, { presence: true } 
    validates :user_id, { presence: true } 

    def user
      return User.find_by(id:self.user_id)
    end
end
