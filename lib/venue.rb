class Venue
  attr_reader :name, :capacity, :patrons, :yelled_at
  def initialize(name, capacity)
  @name = name
  @capacity = capacity
  @patrons = []
  @yelled_at = []
  end

  def add_patron(patron_name)
    @patrons << patron_name
  end

  def yell_at_patrons
    @patrons.each do |patron|
      @yelled_at << patron.upcase
    end
    return yelled_at
  end

  def over_capacity?
    return true if @patrons.count > @capacity
    false
  end

  def kick_out
    if @patrons.count > @capacity == true
      max_people = @patrons.count - @capacity
      @patrons = @patrons.pop(max_people)

    else
      @patrons
    end
  end
end
