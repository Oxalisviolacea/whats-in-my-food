require 'rails_helper'

describe FoodService do
  context "instance methods" do
    context "#search for ingredient" do
      it "returns foods that include that ingredient" do
        search = FoodService.search_for_("sweet potatoes")
        expect(search).to be_a Hash
        expect(search[:foods]).to be_an Array
        food_data = search[:foods].first

        expect(food_data).to have_key :gtinUpc
        expect(food_data[:gtinUpc]).to be_a(String)

        expect(food_data).to have_key :description
        expect(food_data[:description]).to be_a(String)

        expect(food_data).to have_key :brandOwner
        expect(food_data[:brandOwner]).to be_a(String)

        expect(food_data).to have_key :ingredients
        expect(food_data[:ingredients]).to be_a(String)
      end
    end
  end
end