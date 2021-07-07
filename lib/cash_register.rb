require 'pry'
class CashRegister

 attr_accessor :total,:discount

  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
    # @last_transaction=last_transaction
  end
# def discount(discount)
#   self.discount
#
# end
def add_item(title,price,quantity=1)
total=price*quantity
@total+=total
quantity.times{@items<<title}
# binding pry
end

def apply_discount
  if @discount>0
    @total=total-(total*@discount/100)
return "After the discount, the total comes to $#{total}."
else
  return "There is no discount to apply."
end
end
def items
 @items

end
def void_last_transaction
 @total-=total

end
end
