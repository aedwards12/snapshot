class ListingsController < ApplicationController

	def index
		search = PgSearch.multisearch("california")
		
		@collection = []
		
		search.each do |item|
		  @collection << Listing.find(item.id)
	  end
	  @collection
	end	
end
