class Order

  attr_accessor :company, :quantity, :remaining_quantities, :status, :type

  def initialize(type, company, quantity)
    @type = type
    @company = company
    @quantity = quantity
    @remaining_quantities = quantity  
  end

  def decrease_remaining_quantities(quantity)
    if quantity < remaining_quantities
      @remaining_quantities -= quantity
    else
      @remaining_quantities = 0
    end
  end

  def status
    if remaining_quantities == 0
      "Closed"
    else
      "Open"
    end
  end

  def sell?
    type == "SELL"
  end


end
