class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity, patrons = [])
    @name = name
    @capacity = capacity
    @patrons = patrons
  end
  def add_patron(patron)
    @patrons += [patron]
  end
  def yell_at_patrons
    @patrons.each do |patron|
      patron.upcase
      @patrons << patron
    end
  end
  def over_capacity?
    if @patrons >= 4
      return true
    else
      return false
    end
  end

  end
