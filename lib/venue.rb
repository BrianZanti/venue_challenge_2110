class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(venue, capacity)
    @name = 'Bluebird'
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    upcase_patrons = []
    patrons.each do |patron|
      upcase_patrons << patron.upcase
    end
    return upcase_patrons
  end

  def over_capacity?
    if patrons.length > 4
      true
    else patrons.length < 4
      false
    end
  end

  def kick_out
    if patrons.length > 4
      patrons.pop
    end
  end
end
