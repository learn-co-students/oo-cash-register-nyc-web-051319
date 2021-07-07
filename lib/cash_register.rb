require  'pry'
class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end


  def add_item(title, price, quantity=1)
    @last_transaction = price * quantity
    @items ||= []
    quantity.times {@items.push(title)}
    @total += price * quantity
  end

  def apply_discount
      if @discount != nil
        @total -= @total * @discount / 100.00
        "After the discount, the total comes to $#{sprintf("%.0f", @total)}."
      else
        "There is no discount to apply."
      end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
