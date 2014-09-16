class ListingsController < ApplicationController

	def index

		# search = PgSearch.multisearch("New York")

		text_search = Listing.listing_search(params[:search_text])		
		search = text_search

		if params[:start_date] != "" && params[:end_date] != ""
			start_date_search = Listing.where(available_from: params[:start_date])
			end_date_search = Listing.where(available_to: params[:end_date])
			search = text_search & start_date_search & end_date_search
		end

		@collection = []
		search.each do |item|
		  @collection << Listing.find(item.id)
	  end

	  @collection
	end

end
