class SearchController < ApplicationController

    def index
        if params[:query].present?
            @events = Event.location_search(params[:query])
        else
            @events = Event.all
        end
    end

end
