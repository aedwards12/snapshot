class ListingsController < ApplicationController

	def index
		p params
		search = PgSearch.multisearch(params[:search_text])

		@collection = []
		
		search.each do |item|
		  @collection << Listing.find(item.id)
	  end
	  @collection
	end

end
