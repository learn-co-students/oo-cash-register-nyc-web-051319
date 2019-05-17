class CashRegister

attr_accessor :total, :discount, :transaction, :items



  def initialize(discount= 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity=1)

    total = price * quantity
    self.total += total

    quantity.times do
       self. items << title
     end

      self.transaction = quantity * price
  end


  def apply_discount
    if @discount > 0
      self.total = total - (total*@discount/100)
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end


  def void_last_transaction
      self.total = self.total - self.transaction
  end
end
