class Order < ApplicationRecord
    has_many :order_items
    has_many :items, through: :order_items
    belongs_to :restaurant

    def price
        self.items.map {|item| item.price }.sum
    end 

    # def item_collection
    #     self.items.each {|item| item.name}
        
    # end 

   
end 
