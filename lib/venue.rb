class Venue
  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def patrons
    []
  end

  def add_patron(add_patron)
    @patrons = add_patron

  end

end
