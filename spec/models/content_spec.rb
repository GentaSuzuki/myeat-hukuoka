require 'rails_helper'

RSpec.describe Content, type: :model do
  describe '#create' do
    before do
      @content = FactoryBot.build(:content)
    end

    it 'image,restaurant,genre_id,city_id,town_id,price_idがあると保存できること' do
      expect(@content).to be_valid
    end

    it '店名画像が一枚以上つけることが必須であること' do
      @content.images = nil
      @content.valid?
      expect(@content.errors.full_messages).to include("画像を入力してください")
    end

    it 'お店の名前が必須であること' do
      @content.restaurant = nil
      @content.valid?
      expect(@content.errors.full_messages).to include("店名を入力してください")
    end

    it 'ジャンルの指定が必須であること' do
      @content.genre_id = 0
      @content.valid?
      expect(@content.errors.full_messages).to include('ジャンルは---以外を選択してください')
    end

    it '地区の指定が必須であること' do
      @content.city_id = 0
      @content.valid?
      expect(@content.errors.full_messages).to include('住所(地区)は---以外を選択してください')
    end

    it '市町の指定が必須であること' do
      @content.town_id = 0
      @content.valid?
      expect(@content.errors.full_messages).to include('住所(市町)は---以外を選択してください')
    end

    it '価格帯の指定があること' do
      @content.price_id = 0
      @content.valid?
      expect(@content.errors.full_messages).to include('予算は---以外を選択してください')
    end
  end
end
