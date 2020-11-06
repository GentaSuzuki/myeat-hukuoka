FactoryBot.define do
  factory :user do
    nickname { 'suzuki' }
    email              { 'suzuki@.gmail.com' }
    password           { 'test00000' }
    encrypted_password { 'test00000' }
    years_old          { '1999-10-20' }
  end
end
