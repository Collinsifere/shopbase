   namespace :export do
    desc "Prints Product.all in a seeds.rb way."
    task :seeds_format => :environment do
        Product.order(:id).all.each do |product|
         bad_keys = ['created_at', 'updated_at', 'id']
         serialized = product.serializable_hash.
                      delete_if{|key,value| bad_keys.include?(key)}
     puts "Product.create(#{serialized})"
   end
  end
end