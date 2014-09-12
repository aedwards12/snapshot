class ListingsController < ApplicationController

	def index
		p params
		search = PgSearch.multisearch(params[:term][:location])
		
		@collection = []
		
		search.each do |item|
		  @collection << Listing.find(item.id)
	  end
	  @collection
	end

end
