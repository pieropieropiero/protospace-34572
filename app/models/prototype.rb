class Prototype < ApplicationRecord

  #アソシエーションの設定
  belongs_to :user
  has_many :comments, dependent: :destroy

  #テーブルに画像ファイルを紐付け
  has_one_attached :image

  #バリデーションの設定
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

end
