class Venue
  attr_reader :name,
              :capacity,
              :patrons
  def initialize(name, capacity)
    @name     = name
    @capacity = capacity
    @patrons  = []
  end

  def add_patron(patron)
    patrons << patron
  end

  def yell_at_patrons
    yelled_at = []
    @patrons.each do |patron|
    yelled_at << patron.upcase
    end
    yelled_at
  end

  def over_capacity?
    patrons.count > 4
  end

  def kick_out
    patrons.pop
    over_capacity?
  end
end
