class SearchController < ApplicationController
  def index
    @foods = SearchFacade.foods(params[:q])
  end
end 