class Venue

  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity

    @patrons = []
  end


  def add_patron(patron)
    patrons << patron
  end


  def yell_at_patrons
  upcase_patrons = []
    patrons.each do |patron|
      upcase_patrons << patron.upcase
    end
  upcase_patrons
  end

  def over_capacity
    if patrons.length > capacity
       true
    else
      false
    end
  end

  def kick_out
    while patrons.length > capacity
      patrons.pop
    end
  end

end
