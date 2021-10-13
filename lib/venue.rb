class Venue
    attr_reader :name, :capacity
    attr_accessor :patrons
  def initialize(name, capacity, patrons = [])
    @name = name
    @capacity = capacity
    @patrons = patrons
  end

  # create method named add_patron
  # takes a patron as an argument
  # it puts that patron into the patrons array

  # def patrons
  #

  def add_patron(patron)
    [patron] << @patrons
    @patrons += [patron]
  end

  # create method called yell_at_patrons
  # method takes arguments for patrons
  # method converts names into all caps


   def yell_at_patrons
     @patrons.map(&:upcase)
      # require "pry"; binding.pry
   end

   # puts yell_at_patrons


   # make method called over_capacity
   # create a counter for the elements in patrons array
   # if the number of patrons is greater than capacity,
   # puts true.

   def over_capacity
     if @patrons.count > @capacity
       true
     elsif
       @patrons.count <= @capacity
       false
     else
       puts "not a valid party lol"
     end
   end


   # write a method called kick kickout
   # if over capacity by 1, kick out last element in array

   def kick_out
     if over_capacity == true
       @patrons.pop
     end
   end
 end

#  require "pry"; binding.pry
