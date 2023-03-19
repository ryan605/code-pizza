puts "deez nuts"

10.times do

    # name = Faker::JapaneseMedia::OnePiece.island
    # address = Faker::JapaneseMedia::OnePiece.location
    # Restaurant.create(name: name, address: address)

    name = Faker::Food.spice
    ingredients = Faker::Food.ingredient
    Pizza.create(name: name, ingredients: ingredients)



end
puts "dooone"
