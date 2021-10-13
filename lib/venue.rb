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
    @patrons << patron
  end

  def yell_at_patrons
    upcased_patrons = patrons.map do |patron|
      patron.upcase
    end
    upcased_patrons
  end

  def over_capacity?
    if @patrons.length <= @capacity
      false
    elsif @patrons.length > @capacity
      true
    end
  end

  def kick_out
    if @patrons.length > @capacity
      @patrons.shift
    end
  end
end
