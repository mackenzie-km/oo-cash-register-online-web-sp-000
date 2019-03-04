
class CashRegister
  #creates readers/writers for total and discount
  attr_accessor :total, :discount, :recent_items
  
#creates an array of all items so you know what you chose  
@@all_items = []
  
#initializes an register with total of zero and an optional employee discount
def initialize(discount = nil)
  @total = 0
  @discount = discount
end 

#adds an item by updating total price and items array
def add_item(title, price, quantity = 1)
  @instance_items = []
  @total += price*quantity
  @instance_items << [title, price, quantity]
 quantity.times{@@class_items << title}
end

 #applies employee discount if appropriate      
def apply_discount
if @discount != nil 
  @total -= (@total*@discount/100)
  "After the discount, the total comes to $#{@total}."
else
  "There is no discount to apply."
end
end

#tells you what items you put into your register
def items
  instance_item_display = []
  @instance_items.each do |entry|
      instance_item_display << entry[0] 
  end 
    instance_item_display
end 

def void_last_transaction
@total -= @instance_items[-1][1]
end 

end 