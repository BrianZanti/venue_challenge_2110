class Venue
  attr_accessor :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron_name)
    # Add addition patrons to the venue list.
    @patrons << patron_name
  end

  def yell_at_patrons
    # Iterate through patrons and change string value to upcase.
    @patrons.map do |patron|
      patron.upcase
    end
  end

  def over_capacity?
    # If the number of patrons is greater than capacity return true.
    @patrons.count > @capacity ? true : false
  end

  def kick_out
    if self.over_capacity? == true
      # over_count is how many patrons are we over capacity.
      over_count = @patrons.count - @capacity

      # Remove the last entrants down to the capacity limit.
      over_count.times do
        @patrons.pop
      end
    end
  end
end
