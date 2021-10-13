class Venue
  attr_reader :name, :capacity
  def initialize (name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def patrons
    patrons = []
  end

  def add_patron(new_patron)
    patrons << new_patron.new
  end

  def yell_at_patrons
    patrons.upcase
  end
end
