require 'twilio-ruby'
require_relative 'menu'

class Takeaway

  attr_reader :shoppingcart

  def initialize
    @shoppingcart = []
    @menu = Menu.new
  end

  def read_menu
    "What would you like to order? We currently have....#{@menu.show_menu}"
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
