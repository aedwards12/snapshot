# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user2 = User.create(name: 'Anthony', email: 'anthony@email.com', address: '678 Street')

require 'faker'


	20.times do 
	  address ="#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state}"
	  user1 = User.create(name: Faker::Name.name, email: Faker::Internet.email, address: address)
	end

	40.times do 
		year = "2014"
		month = [9, 10, 11, 12].sample
	  day = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28].sample
	  to_day = [1,2 ,3,4,5,6,7,8,9].sample
	  time_to = "18:00:00"
	  time_from = "12:00:05"
	  date_to = " #{year}-#{month}-#{to_day}"
	  date_from  = "#{year}-#{month}-#{day}"
	  address =" #{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state}"
		listing1 = Listing.create(host: User.all.sample, available_from: date_from, available_to: date_to, address: address)
  end
 
	15.times do 
	  Booking.create(producer: User.all.sample, listing: Listing.all.sample, booked_from: Listing.all.sample.available_from.to_s, booked_to:Listing.all.sample.available_to.to_s, price: rand(100)+1)
	end

	tag_names = ["garden", "wall", "mansion", "couch", "bed", "pool", "inground pool", "window", "pond", "private beach", "tree", "basement", "spookey", "basement", "skylight", "natural light", "cave", "car", "apartment", "house", "barn", "stable", "ranch", "antique"]

	tag_names.each do |t| 
	  Tag.create(name: t)
	end
 
	20.times do 
	  Tagable.create(listing: Listing.all.sample, tag: Tag.all.sample)
	end

	40.times do 
	  Testimonial.create(producer: User.all.sample, listing: Listing.all.sample, title: Faker::Name.title, rating: rand(5), comment: Faker::Hacker.say_something_smart)
	end

	User.all.each do |user|
	 	Photo.create(title: Faker::Name.title, url: "image_test.jpg", photographable: user)
	end

	60.times do 
	  Photo.create(title: Faker::Name.title, url: "image_test.jpg", photographable: Listing.all.sample)
	end


