class Venue
  attr_reader :name, :capacity, :patrons

  def initialize (venue, capacity)
    @name = venue
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patrons)
    @patrons = ['Mike', 'Megan', 'Bob']

  end

  def yell_at_patrons(patrons)
    @patrons = ['Mike', 'Megan', 'Bob'].upcase
  end

end
