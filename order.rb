require_relative "restaurant"
require_relative "customer"
class Order
    attr_reader :food, :created_at
   def initialize(customer, restaurant) 
      @customer = customer
      @restaurant= restaurant
      @food= []
      @created_at = Time.now
   end
   
   def add(food)
       @food << food
   end
   
   def total
      total = 0
      @food.each do |f|
        puts "price is #{f.price}"
        total = total + f.price
      end
      total
   end
   
   def reciept
      string= ""
      string << "order for #{@customer.name}: \n" 
      string << "order taken on: #{@created_at}: \n" 
      string << "Items: \n" 
      @food.each do |food|
         string << "- #{food.name}: \n" 
      end
      string << "Total for the order $#{total}\n" 
      string << "\n\n"
      string << "Please come again!!" 
   end
end







