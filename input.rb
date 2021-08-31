require './order.rb'
require './stock_exchange.rb'
orders = []

se = StockExchange.new
puts "Enter exit to terminate"
puts
puts "Use only upper case"
puts

while true

    puts "enter order type"

    type = gets.chomp

    puts "enter company name"

    company_name = gets.chomp

    puts "enter order quantity"

    quantity = gets.chomp

    orders << Order.new(type, company_name, quantity)

    user_input = gets.chomp

    se.buy_orders << orders

    if user_input == "exit"
      puts "Orders:"
      orders.each do |order|
        #puts "Type: #{order.type}"
        #puts "Company: #{order.company}"
        #puts "Quantity: #{order.quantity}"
        puts "buy_orders: #{se.buy_orders}"
        puts ""
      end
      break
    end

end
