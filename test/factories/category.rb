FactoryBot.define do
  factory :category do
    name { Faker::Name.name }
    image_url { Faker::Avatar.image(slug: "category") }
  end
end
