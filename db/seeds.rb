# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'development'
  Product.destroy_all
  Ingredient.destroy_all

  ['Chicken', 'Tofu', 'Salmon', 'Tuna'].each do |ingredient|
    Ingredient.create(name: ingredient, price: 25, available: true)
  end
  weekday = [0, 1, 2, 3, 4]
  ['Bibimbap', 'Funchöza', 'Hoe-deopbap', 'Kimchi-jjigae', 'Korean tacos'].each do |dish|
    prod = Product.create(name: dish,
                             price: 89,
                             description: 'Bibimbap, sometimes anglicized as bi bim bap or bi bim bop, is a Korean dish. The word literally means "mixed rice". Bibimbap is served as a bowl of warm white rice topped with namul and gochujang, soy sauce, or doenjang. Pulled beef, kimchi, egg, spinach, and protein of your choice.',
                             image: 'http://richtree.com/wp-content/uploads/sites/2/2016/10/IMG_2392.jpg',
                             of_type: 'dish',
                             daily_dish_for: weekday[0],
                             available: true)
    prod.ingredients.push Ingredient.all
    weekday.shift
  end



  ['Herb Salad', 'Caesar Salad', 'Panzanella', 'Tricolor Salad', 'Yellow Trio'].each do |salad|
    Product.create(name: salad,
                   price: 55,
                   description: 'A salad is a dish consisting of a mixture of small pieces of food, usually predominantly vegetables. They are typically served at room temperature or chilled, with notable exceptions such as south German potato salad which is served warm.',
                   available: true,
                   of_type: 'salad',
                   image: 'http://img.taste.com.au/89rfrNZj/w720-h480-cfill-q80/taste/2016/11/bibimbap-92850-1.jpeg')
  end

  ['Coca-Cola', 'Fanta', 'Pepsi', 'Loka', 'Green te', 'Black te', 'Mint te', 'Ginger beer', 'Juice', 'Saft'].each do |drink|
    Product.create(name: drink,
                   price: 10,
                   available: true,
                   of_type: 'drink',
                   description: 'A drink or beverage is a liquid intended for human consumption. In addition to their basic function of satisfying thirst, drinks play important roles in human culture. Common types of drinks include plain water, milk, juices, coffee, tea, and soft drinks. In addition, alcoholic drinks such as wine, beer, and liquor, which contain the drug ethanol, have been part of human culture and development for 8,000 years.',
                   image: 'https://goo.gl/images/Uh6t7A')
  end
end