class SearchFacade
  def self.foods(ingredient)
    json = FoodService.search_for_(ingredient)
    @foods = json[:foods][0..9].map do |food_data|
      Food.new(food_data)
    end
  end
end