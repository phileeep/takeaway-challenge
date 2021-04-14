class Menu

attr_reader :dish

  def initialize
    @dish = 
    { "Margarita" => 8.99, "Vegetarian" => 9.99, "Calzone" => 10.99, 
    "Cheesecake" => 3.99, "Water" => 0.99 }
  end

  def show_menu
    @dish.map { |food, price| "#{food}: £#{price}" }.join(", ")
  end
end