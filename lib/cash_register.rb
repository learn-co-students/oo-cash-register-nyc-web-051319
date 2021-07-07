class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    

    def initialize(discount =0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, increase=1)
        self.last_transaction = price
        self.total += (price * increase) 
        
        while increase > 0
            @items << title
            increase -= 1
        end
    end

    def apply_discount()
        if (@discount == 0)
            "There is no discount to apply."
        else
            self.total = self.total * ((100.0 - @discount)/100)
            "After the discount, the total comes to $#{self.total.to_i}."
        end
    end
    
    def items
        @items
    end

    def void_last_transaction
        @total -= self.last_transaction
    end





end
