require 'pry'
class CashRegister
  attr_accessor :total, :transaction
  attr_reader :discount


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction = 1
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {
    @items << title
    }
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = (@total * (1-(@discount * 0.01))).round
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    if @transaction > 0
      @total =0
    end
  end


end

new_basket = CashRegister.new
new_basket.add_item("apple", 4, 2)
