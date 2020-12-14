class FoodService
  def self.search_for_(ingredient)
    response = conn.get("/fdc/v1/foods/search?query=#{ingredient}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
     conn = Faraday.new("https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = ENV["USDA_API_KEY"]
    end
  end
end