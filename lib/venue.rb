class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end
  def add_patron(name)
    @patrons << name
  end
  def yell_at_patrons
    @patrons.map! { |name| name.upcase }
  end

  def over_capacity?
    if @patrons.size <= @capacity
      return false
    elsif @patrons.size > @capacity
      return true
    else
      return "Invalid input"
    end
  end
  def kick_out
    while @patrons.size > @capacity
      @patrons.pop
    end
    return @patrons
  end
end
