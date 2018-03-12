class CashRegister
  
  attr_accessor :discount,:total
  @items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @items << title
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    return @items
  end
  
end