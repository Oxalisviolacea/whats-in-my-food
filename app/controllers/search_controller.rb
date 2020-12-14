class SearchController < ApplicationController
  def index
    search = params[:q]
    conn = Faraday.new("https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = ENV["USDA_API_KEY"]
    end
    response = conn.get("/fdc/v1/foods/search?query=#{search}")
    json = JSON.parse(response.body, symbolize_names: true)
    @foods = json
  end
end 