class User < ApplicationRecord
    validates :name, { presence: true } #名前の空欄は許されない
    validates :email, { presence: true, uniqueness: true } #空欄と重複は許されない
end
