require 'spec_helper'

describe Listing do 

	# it "has a valid factory" do 
	# 	expect(FactoryGirl.build(:contact)).to be_valid
	# end
	before(:each) do 
				address ="#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state}"
				@user1 = User.new(name: Faker::Name.name, email: Faker::Internet.email, address: address)
	end 
		
	it "is valid with a address, available_from, available_to, user_id" do 
		listing = Listing.new(host: @user1, available_to: Time.now, available_from: Time.now, address: "148 Smith St, Brooklyn, NY 11201")
		expect(listing).to be_valid
	end 

	it "is invalid without an address" do 
		
	end 

	it "is invalid without an available_to"
	it "is invalid without an available_from"
	it "is invalid without an user_id"

end	