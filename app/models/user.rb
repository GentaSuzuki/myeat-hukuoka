class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
         with_options presence: true do
          validates :nickname
          validates :email,format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, uniqueness: {case_sensitive: false}}
          validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: 'is invalid. Input half-width characters.' }
          validates :encrypted_password
          validates :years_old
          end
  
          has_many :contents
          has_many :messages

end
