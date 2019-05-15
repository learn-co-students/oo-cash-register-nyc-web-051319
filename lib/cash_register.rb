
class Item
  attr_accessor :label, :price
end


class CashRegister
  attr_accessor :total, :discount, :items, :history

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @history = []
  end

  def add_item(item, price, quantity = 1)
    @total += price*quantity
    quantity.times do
      @items << item
    end
    @history << price*quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      discount_muliplier = 1 - (@discount * 0.01)
      @total = @total * discount_muliplier
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    last_transaction = @history[-1]
    @total -= last_transaction
    @items.shift
  end
end
