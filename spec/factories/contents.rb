FactoryBot.define do
  factory :content do
    restaurant     { 'name' }
    genre_id       { 1 }
    city_id        { 1 }
    town_id        { 1 }
    price_id       { 1 }
    after(:build) do |item|
      item.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    association :user
  end
end
