class Product < ApplicationRecord
 require 'smarter_csv'


  #   end
   def self.import(file)
     options = {}
     holder =[]
     SmarterCSV.process(file.path, options) do |chunk|
       chunk.each do |data_hash|
         @product = Product.new
         @product.name = data_hash[:name]
         @product.image = data_hash[:image]
         @product.description = data_hash[:description]
         @product.size = data_hash[:size]
         @product.price = data_hash[:price]
         holder <<@product
       end
     end
     holder.each do |prod|
       prod.save
     end

   end
end
