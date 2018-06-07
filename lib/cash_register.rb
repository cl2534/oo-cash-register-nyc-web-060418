class CashRegister
  attr_accessor :total
  attr_accessor :discount
  attr_accessor :cart
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity 
    if @cart.include?(title) == false 
      @cart << title 
    end
  end
  
  def apply_discount
    if self.discount != 0  
      @total = total - (total * (self.discount / 100.0))
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end 
  end 
  
  def items 
    @cart
  end 
end 