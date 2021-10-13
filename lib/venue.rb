class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @attendance = 0
  end

  def add_patron(patron)
    @attendance += 1
    @patrons << patron
  end

  def yell_at_patrons
    yell_names = @patrons.map do |patron|
      patron.upcase
    end
  end

  def over_capacity?
    if @attendance <= @capacity
      false
    else
      true
    end
  end

  def kick_out
    if over_capacity? == true
      (@attendance - @capacity).times do
        @patrons.delete(-1)
      end
    end
  end
end
