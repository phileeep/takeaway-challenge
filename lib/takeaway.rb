require 'twilio-ruby'

class Takeaway

  attr_reader :items, :shoppingcart

  def initialize
    @items = 
    { "Margarita" => 8.99, "Vegetarian" => 9.99, "Pepperoni" => 10.99, 
    "Cheesecake" => 3.99, "Water" => 0.99 }

    @shoppingcart = []
  end

  def read_menu
    p "What would you like to order? We currently have...."
    p @items
  end

  def add(item)
    @shoppingcart << @items[item.capitalize] 
    # blocker: to convert it over to being a symbol, 
    # this wasn't needed actually. hash was the wrong values.
    "#{item.capitalize} added to your basket. The total currently is £#{total}"
  end

  def total
    @shoppingcart.reduce(:+).round(2)
  end

  def time
    time = Time.now + 3600 # seconds in an hour
    time.strftime("%k:%M")
  end
  
  def checkout  
    sendtext
    return "The total was: £#{total}"
  end
end
