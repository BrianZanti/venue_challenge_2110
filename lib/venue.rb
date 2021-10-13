class Venue

  attr_reader :name, :capacity, :patrons

  def initialize (name_arg, capacity_arg)
    @name = name_arg
    @capacity = capacity_arg
    @patrons = []
  end

  def add_patron (name)
    patrons.push(name)
  end

  def yell_at_patrons
    capitilized_names = []
    patrons.each do |patron_name|
      capitilized_names.push(patron_name.upcase)
    end
    return capitilized_names
  end

  def over_capacity?
    if patrons.count > capacity
      return true
    else
      return false
    end
  end

  def kick_out
    while patrons.count > capacity
      patrons.pop
    end
  end


end
