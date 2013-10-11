names = ["fluffy", "chunky", "adjective", "kitty"]

100.times do |n|
  Cat.create(:name => names.sample, :color => Cat::COLORS.sample, :age => n)
end
