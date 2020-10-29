class Content < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :city
  belongs_to_active_hash :town
  belongs_to_active_hash :price
  belongs_to :user
  has_many   :messages
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :restaurant
    validates :genre_id, numericality: { other_than: 0 }
    validates :city_id, numericality: { other_than: 0 }
    validates :town_id, numericality: { other_than: 0 }
    # validates :prefecture_id, numericality: { other_than: 0 }
    validates :price_id, numericality: { other_than: 0 }
  end
end
