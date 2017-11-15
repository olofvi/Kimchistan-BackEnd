class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image, :available
  attribute :daily_dish_for, key: :dailydishfor
  attribute :of_type, key: 'type'
  attribute :ingredients

  def ingredients
    object.ingredients.map do |ing|
      IngredientSerializer.new(ing).as_json
    end
  end
end