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
	listings_address = [
		"250 Broadway, New York, NY 10007", 
 	"130 Church St, New York, NY 10007", 
		"100 Chambers St, New York, NY 10007",
		 "132 Nassau St, New York, NY 10038", 
		 "122 Fulton St, New York, NY 10038", 
		 "321 Broadway, New York, NY 10007", 
		 "2 Cortlandt St, New York, NY 10007",
		  "49 Nassau Street, New York, NY 10038", 
		  "64 Fulton St, New York, NY 10038" ,
		  "100 Maiden Ln, New York, NY 10038", 
		  "139 Centre St, New York, NY 10013", 
		  "19 Rector St, New York, NY 10006", 
		  "125 Lafayette St, New York, NY 10013",
		   "33 Beaver St, New York, NY 10004", 
		   "149 Canal St, New York, NY 10002", 
		   "201 Madison St, New York, NY 10002", 
		   "395 Hudson St, New York, NY 10014",
		    "234 Thompson St, New York, NY 10012",
		     "1 Exchange Pl, Jersey City, NJ 07302", 
		     "75 Christopher St, New York, NY 10014", 
		     "100 1st Ave, New York, NY 10009", 
		     "215 1st Ave, New York, NY 10003", 
		     "536 Avenue Of The Americas, New York, NY 10011",
		      "101 E 16th St, New York, NY 10003", 
		      "266 First Ave, New York, NY 10009", 
		      "30 Mall Dr W, Jersey City, NJ 07305",
		       "321 Grove St, Jersey City, NJ 07302", 
		       "148 Smith St, Brooklyn, NY 11201", 
		       "243 3rd Ave, New York, NY 10003", 
		       "183 12th St, Jersey City, NJ 07310", 
		       "322 Livingston St, Brooklyn, NY 11217", 
		       "127 East 23rd St, New York, NY 10010", 
		       "101 W 23rd St, New York, NY 10011",
]

	listings_address.each do |address|
		year = "2014"
		month = [9, 10, 11, 12].sample
	  day = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28].sample
	  to_day = [1,2 ,3,4,5,6,7,8,9].sample
	  time_to = "18:00:00"
	  time_from = "12:00:05"

	  date_to = " #{year}-#{month}-#{to_day} #{time_to}"
	  date_from  = "#{year}-#{month}-#{day} #{time_from}"
	  # address =" #{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state}"
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


