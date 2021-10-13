class Venue
  attr_accessor :bird_type, :capacity, :capacity

  def initialize(bird_type, capacity)
    @bird = bird_type
    @capacity = capacity
    @patrons = []
  end

  def name
    @bird
  end

  def capacity
    @capacity
  end

  def patrons
    @patrons
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
    yelled_names = []
    patrons.each do |patron|
      yelled_names << patron.upcase
    end
    return yelled_names
  end

  def over_capacity?

    return patrons.size > capacity

  end

  def kick_out
    while over_capacity? == true
      patrons.pop
    end
  end


end
