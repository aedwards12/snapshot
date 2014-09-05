# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: 'Cassie', email: 'cassie@email.com', address: '123 Street')

user2 = User.create(name: 'Anthony', email: 'anthony@email.com', address: '678 Street')

listing1 = Listing.create(host: user1, available_from: Time.now, available_to: Time.now, address: '345 Street')

booking1 = Booking.create(producer: User.find(2), listing: Listing.first, booked_from: Time.now, booked_to: Time.now, price: 50)

tag_names = ["garden", "wall", "mansion"]

tag_names.each do |t| 
  Tag.create(name: t)
end

Tagable.create(listing: Listing.first, tag: Tag.first)
