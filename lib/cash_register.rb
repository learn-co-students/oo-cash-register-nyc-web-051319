
require 'pry'
class CashRegister

    attr_accessor :total, :discount, :price, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity=1)
        #increase total
        @price = price
        self.total += price * quantity
        while quantity != 0
            @items << item
            quantity -= 1
        end 
        self.last_transaction = self.total * quantity
    end

    def apply_discount
        if discount != 0
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total = self.last_transaction - self.last_transaction
    end

end
