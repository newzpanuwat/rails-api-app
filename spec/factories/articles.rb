require 'faker'

FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence }
    url { Faker::Barcode.ean(13) }
    posted_by { Faker::Name.name }
  end
end