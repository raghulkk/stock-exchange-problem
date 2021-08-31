
require './order.rb'

require './input.rb'

class StockExchange

  attr_accessor :buy_orders, :sell_orders, :orders


  def initialize
    @buy_orders = []
    @sell_orders = []
    @orders = []
  end

  def add_order(type, company, quantity)
    order = Order.new(type, company, quantity)
    orders << order
      i = 0
      while i < orders.length

        if order.sell?
          buy_orders = buy_orders.first
          order.decrease_remaining_quantities(buy_orders.remaining_quantity)
          buy_orders.decrease_remaining_quantities(orders.remaining_quantity)

        else
          sell_orders
        end

      end

  end






end