require_relative "address"
require_relative "food"

class Restaurant
    attr_reader :name, :address, :food
     def initialize(name , address)
         @name= name
         @address = address
         @food = []
     end
     
     def add(food)
        @food << food 
     end

end 