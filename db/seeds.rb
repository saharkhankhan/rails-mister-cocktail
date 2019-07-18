puts 'Cleaning Data Base'

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts 'Creating Ingredients...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingreient_api = open(url).read
full_hash = JSON.parse(ingreient_api)
drinks_array = full_hash['drinks']
sample = drinks_array
sample.each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
  p drink['strIngredient1']
end

puts 'Finshed ✅'
