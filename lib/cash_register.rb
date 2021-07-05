class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end


  def add_item(title, price, quanitity = 1)
    @last_transaction = price * quanitity
    self.total += price * quanitity
    quanitity.times {@items << title}
  end

  def apply_discount
    if @discount > 0
      self.total = total - (total * @discount / 100)
      return "After the discount, the total comes to $#{total}."
    elsif @discount == 0
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= last_transaction 
  end
end
