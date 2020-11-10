class Content < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :city
  belongs_to_active_hash :town
  belongs_to_active_hash :price
  belongs_to :user
  has_many   :comments, dependent: :destroy
  has_many_attached :images, dependent: :destroy

  with_options presence: true do
    validates :images
    validates :restaurant
    validates :genre_id, numericality: { other_than: 0, message: 'は---以外を選択してください' }
    validates :city_id, numericality: { other_than: 0, message: 'は---以外を選択してください' }
    validates :town_id, numericality: { other_than: 0, message: 'は---以外を選択してください'  }
    validates :price_id, numericality: { other_than: 0, message: 'は---以外を選択してください' }
  end
end
