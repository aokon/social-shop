FactoryBot.define do
  factory :category do
    name { Faker::Name.name }
    image_url { Faker::LoremFlickr.image }
  end
end
