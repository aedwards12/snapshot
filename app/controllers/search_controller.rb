class SearchController < ApplicationController

  def search
    @results = Listing.partial_search(params["search"])
  end

end
