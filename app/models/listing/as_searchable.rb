class Listing::AsSearchable < Listing

include PgSearch
  pg_search_scope :listing_search, :against => [:address], :associated_against => {
    :tags => [:name]
  }

  pg_search_scope :partial_search, :against => {
    :address => 'A'
    },
    :associated_against => {
      :tags => [:name]
    },
    :using => {
      :tsearch => {:prefix => true }
    }
  geocoded_by :address

	def self.search(params)

		text_search = Listing.all.listing_search(params[:search_text])		
		p search = text_search

		if params[:start_date] != "" && params[:end_date] != ""
			start_date_search = text_search.where(available_from: params[:start_date])
			end_date_search = text_search.where(available_to: params[:end_date])
			search = text_search & start_date_search & end_date_search
		end

		@collection = []
		search.each do |item|
		  @collection << text_search.find(item.id)
	  end

	  @collection

	end	
end	