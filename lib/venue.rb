class Venue
  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(add)
     @patrons.push add

  end

  def yell_at_patrons
    @patrons.each do |patron|
      @patrons.upcase << patron
    end

  end

end
