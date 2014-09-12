class ListingsController < ApplicationController

	def index
		search = PgSearch.multisearch("New York")
		
		@collection = []
		
		search.each do |item|
		  @collection << Listing.find(item.id)
	  end
	  @collection
	end	
end
