require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price.to_f
    @total += @price * quantity
    quantity.times {@items << item}
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @total *= ((100 - @discount)/100.to_f)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= last_transaction
  end

end
