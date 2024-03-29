FactoryBot.define do
  factory :product do
    title { Faker::Name.name }
    price { Faker::Commerce.price }
    currency { "USD" }
    image_url { Faker::LoremFlickr.image }
    quantity { rand(100) }
    color { [:red, :blue, :black].sample }
    description {
      Faker::Lorem.paragraphs.join("
    <br><br>")
    }
  end
end
