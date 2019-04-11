<<<<<<< HEAD
require 'pry'


class CashRegister

  attr_accessor :total, :discount, :last_trans 

  def initialize(discount = 0) 
    @total = 0 
    #binding.pry 
    @discount = discount
    @last_trans = 0
    @items = [] 

  end 

  # def discount
  #   @discount 
  # end 

  # def total
  #   @total
  # end 

  def add_item (item, price, quantity = 1)    
    self.total += price * quantity
    self.last_trans = self.total 
    while quantity > 0
      @items << item
      quantity -= 1
    end  
    #binding.pry 
  end

  # quantity.times do
  #   @items << item

  
  
  def apply_discount
    self.total = self.total - @discount * 10
    if @discount > 0    
    #binding.pry  
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply." 
    end 
  end
  
  def items 
    @items 
  end 

  def void_last_transaction
    self.total -= self.last_trans
  end 
=======
class CashRegister

  attr_accessor :total, :last_trans

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_trans = 0
  end

  def discount
    @discount
  end

  def add_item(title, price)
    # @total += price
    self.total += price * quantity
    self.last_trans = self.total
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    self.total -= self.discount*10
    "After the discount, the total comes to $#{self.total}."
  end

  def items
    @item
  end

  def void_last_transaction(price, quantity)
    #self.total -= self.trans
    self.last_trans -= (price * quantity)
    self.total -= self.last_trans
  end


>>>>>>> 70e3acd96389e7c08b45c81c8e382ebe38014c59

end 
