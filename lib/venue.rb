class Venue
  attr_reader :name, :capacity
  attr_accessor :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []

  end
  def add_patron(patron)
    @patrons << patron
  end
  def yell_at_patrons
    @patrons.map{|patron| patron.upcase}
  end
  def over_capacity?
    return true if @patrons.length > @capacity
    false
  end
  def number_of_patrons
    @patrons.length
  end
  def kick_out
    if @patrons.length > @capacity
      space_needed = @patrons.length - @capacity
      @patrons.delete(space_needed)
      @patrons
    end
  end
end
