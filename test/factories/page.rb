FactoryBot.define do
  factory :page do
    title { Faker::Commerce.department }
    content { Faker::Lorem.paragraphs.join("<br><br>") }
  end
end
