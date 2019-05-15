require "pry"

class CashRegister
    
    attr_accessor :total, :discount, :prev_item, :prev_price, :prev_quantity
    attr_reader :items

    def initialize(discount=0)
        @total = 0.0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity=1)
        @prev_item = item
        @prev_price = price * quantity
        @prev_quantity = quantity
        @items.fill(item, items.size, quantity)
        @total += @prev_price 
    end

    def apply_discount
        @total = @total * (100 - @discount) / 100
  
        if @discount == 0 
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def void_last_transaction
        @items.slice!(-@prev_quantity, @prev_quantity)
        @total -= @prev_price * @prev_quantity        
    end

end
