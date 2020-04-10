class OrderItem < ApplicationRecord
    belongs_to :order_items
    belongs_to :product
    
    before_action :set_unit_price, only: [:show]
    before_action :set_total, only: [:show, :edit, :update]
    
    def unit_price
        if persisted?
            self[:unit_price]
        else
            product.price
        end 
    end   
    
    
    def total
        unit_price*quantity
    end 
    
    
    private
    
    def set_unit_price
        self[:unit_price] = unit_price
    end 
    
    def set_total
        self[:total] = total*quantity
    end 
end
