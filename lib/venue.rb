class Venue
  # initialize read abilities for three major attributes
  attr_reader :name, :capacity, :patrons

  # initialize venue class
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  # add a patron to the patrons array
  def add_patron(patron)
    @patrons << patron
  end

  # return a list of patrons that is all uppercase
  def yell_at_patrons
    yelled_at_patrons = []
    patrons.each do |patron|
      yelled_at_patrons << patron.upcase
    end
    return yelled_at_patrons
  end

  # check if patrons lsit is greater than capacity
  def over_capacity?
    if self.patrons.count > self.capacity
      true
    elsif self.patrons.count <= self.capacity
      false
    else
      'Something is wrong'
    end
  end

  # kick_out method continues to loop through patrons list, removing last patron
  # until no longer over capacity
  def kick_out
    while self.over_capacity?
      self.patrons.pop
    end
  end

end
