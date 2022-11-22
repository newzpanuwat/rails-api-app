require 'faker'
Article.destroy_all
[1,2,3,4,5].each do |e|
  Article.create(
    title: Faker::Lorem.sentence,
    url: "https://panu-lab.dev/#{Faker::Barcode.ean(13)}",
    posted_by: Faker::Name.name
  )
end

puts "Article success"
