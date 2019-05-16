require "pry"

class CashRegister

  attr_accessor :items, :discount, :last_transaction

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total=(total)
    @total += total
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    # binding.pry
    quantity.times do
      @items << title
    end
    self.last_transaction = price * quantity
    @total += price * quantity
  end

#binding.pry

  def apply_discount
    if @discount
      @discount *= 0.01
      @total -= (@total * @discount).round(0)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total =- self.last_transaction
  end

#binding.pry
end
