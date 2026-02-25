require "faker"
Restaurant.destroy_all
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[french italian japanese chinese belgian].sample
  )
end

5.times do
  review = Review.new(
    content: Faker::TvShows::BigBangTheory.quote,
    rating: rand(1..5),
    restaurant: Restaurant.all.sample
  )
  review.save!
end
