
class CashRegister

    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=0)
        @total=0
        @discount=discount
        @items=[]
    end


    def total
        @total
    end

    def add_item(title, price, quantity=1)
        item_cost = price * quantity
        @total = @total + item_cost
        @last_item = item_cost
        n=0
        while n < quantity
        @items << title
        n+=1
        end
    end

    def apply_discount
        if @discount > 0
        savings = (@discount/100.to_f)
        @total = @total - (@total*savings)
        "After the discount, the total comes to $#{self.total.to_i}."
        else 
        "There is no discount to apply."  
        end
    end


    def items
        @items
    end


    def void_last_transaction
        @total -= @last_item
        @total
    end

end


