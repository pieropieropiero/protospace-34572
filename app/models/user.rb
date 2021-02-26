class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true
         validates :profile, presence: true
         validates :occupation, presence: true
         validates :position, presence: true


         #アソシエーションの設定
       #  has_many :prototypes
         has_many :comments  # commentsテーブルとのアソシエーション
         has_many :prototypes, through: :comments  
         

end
