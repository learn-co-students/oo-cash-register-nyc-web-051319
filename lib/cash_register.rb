class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity = 1)
    @total  += (price*quantity)
      quantity.times do
      @item << title
      end
  end

  def apply_discount
    if @discount > 0
    @total = @total - (@total * @discount/100)
    return "After the discount, the total comes to $#{total}."
  else
    return "There is no discount to apply."
    end
  end

  def items
    return @item
  end

  def void_last_transaction
    @total -= total
  end
end
