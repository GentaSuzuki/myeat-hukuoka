require 'rails_helper'

RSpec.describe Content, type: :model do
  describe '#create' do
    before do
      @content = FactoryBot.build(:content)
    end

    it 'image,restaurant,genre_id,city_id,town_id,price_idがあると保存できること' do
      expect(@content).to be_valid
    end

    it '店名画像が一枚つけることが必須であること' do
      @content.image = nil
      @content.valid?
      expect(@content.errors.full_messages).to include("Image can't be blank")
    end

    it 'お店の名前が必須であること' do
      @content.restaurant = nil
      @content.valid?
      expect(@content.errors.full_messages).to include("Restaurant can't be blank")
    end

    it 'ジャンルの指定が必須であること' do
      @content.genre_id = 0
      @content.valid?
      expect(@content.errors.full_messages).to include('Genre must be other than 0')
    end

    it '市、区の指定が必須であること' do
      @content.city_id = 0
      @content.valid?
      expect(@content.errors.full_messages).to include('City must be other than 0')
    end

    it '町村の指定が必須であること' do
      @content.town_id = 0
      @content.valid?
      expect(@content.errors.full_messages).to include('Town must be other than 0')
    end

    it '価格帯の指定があること' do
      @content.price_id = 0
      @content.valid?
      expect(@content.errors.full_messages).to include('Price must be other than 0')
    end
  end
end
