class Venue
  attr_accessor :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
    uppercased_names = []
    @patrons.each do |name|
      uppercased_names << name.upcase
    end
    uppercased_names
  end

  def over_capacity?
    @patrons.length > @capacity ? true : false
  end

  def kick_out
    @patrons.shift
    @patrons
  end
end
