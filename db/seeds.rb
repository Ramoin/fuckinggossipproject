 require 'faker'

 User.destroy_all
 Gossip.destroy_all

10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::GreekPhilosophers.quote, email: Faker::Internet.email, age: rand(10..77))
end
	
10.times do
  	Gossip.create!(title: Faker::TvShows::TwinPeaks.location, content: Faker::TvShows::SouthPark.quote, user: User.all[rand(0..9)])
end