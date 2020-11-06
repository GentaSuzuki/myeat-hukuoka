require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it 'nickname,email,password,yaers_oldの記入必須であること' do
      expect(@user).to be_valid
    end

    it 'nicknameが必須であること' do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it 'emailが必須であること' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it 'emailが@を含んでいないと登録されないこと' do
      @user.email = 'suzuki.com'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end

    it 'emailが重複していないこと' do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Email has already been taken')
    end

    it 'passwordが必須であること' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'passwordが六文字以上であれば登録できること' do
      @user.password = '00000'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it 'パスワードは、数字のみの入力ができない' do
      @user.password = '111111'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is invalid. Input half-width characters.')
    end

    it 'パスワードは、英字のみの場合登録できない' do
      @user.password = 'aaaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is invalid. Input half-width characters.')
    end

    it 'passwordが存在してもencrypted_passwordが空では登録できないこと' do
      @user.encrypted_password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Encrypted password can't be blank")
    end

    it 'パスワードとパスワード(確認用)、値が一致が必須であること' do
      @user.password = '123456' == @user.encrypted_password = '123467'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'years_oldが必須であること' do
      @user.years_old = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Years old can't be blank")
    end
  end
end
