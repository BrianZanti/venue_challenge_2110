class Venue

  attr_accessor :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron_name)
    @patrons << patron_name
  end

  def yell_at_patrons
    yelled_patrons = []
    yelled_patrons << @patrons.map(&:upcase)
    return yelled_patrons.flatten
  end

  def over_capacity
    if @patrons.length > @capacity
      return true
    elsif @patrons.length <= @capacity
      return false
    end
  end

  def kick_out # add loop to remove patrons until under capacity.
      if over_capacity == true
        @patrons.delete(@patrons.sample)
      elsif over_capacity == false
        puts "We're under capacity."
      end
    return @patrons
  end

end
