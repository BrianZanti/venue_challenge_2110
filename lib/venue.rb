class Venue

  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def prints_venue_name
    puts @name
  end

  def prints_capacity
    puts @capacity
  end

  def patrons
    @patrons
  end

  def add_patron(first_name)
    @patrons << first_name
  end

  def yell_at_patrons
    @patrons.map(&:upcase)
  end

  def over_capacity # error message
    if @patrons.count >= @capacity
      puts true
    else
      puts false
    end
  end
end
