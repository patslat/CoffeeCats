class Cat < ActiveRecord::Base
  attr_accessible :age, :color, :name
  COLORS = ["Red", "Green", "Blue"]
  COLORS.each do |color|
    scope color.downcase.to_sym, where(:color => color)
  end
end
