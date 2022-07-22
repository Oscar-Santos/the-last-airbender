class SearchController < ApplicationController
  def index
    @members = SearchFacade.get_members(params[:nation]).first(25)
    @count_members = SearchFacade.count_members(params[:nation])
  end
end
