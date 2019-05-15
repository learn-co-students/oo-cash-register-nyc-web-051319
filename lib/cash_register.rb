class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @last_transaction = price * quantity
    self.total += price * quantity
    quantity.times {@items << title}
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = total - (total * @discount / 100)
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= last_transaction
  end
end
