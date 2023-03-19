puts "deez nuts"

10.times do

    name = Faker::JapaneseMedia::OnePiece.island
    address = Faker::JapaneseMedia::OnePiece.location
    Restaurant.create(name: name, address: address)

end