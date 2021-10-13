require 'rspec'
require './lib/venue'

describe Venue do
  # Test setting initial conditions.
  describe '#initialize' do
    it 'is a venue' do
      venue = Venue.new('Bluebird', 4)
      expect(venue).to be_a Venue
    end

    it 'can read the name' do
      venue = Venue.new('Bluebird', 4)
      expect(venue.name).to eq 'Bluebird'
    end

    it 'can read the capacity' do
      venue = Venue.new('Bluebird', 4)
      expect(venue.capacity).to eq 4
    end

    it 'has no patrons by default' do
      venue = Venue.new('Bluebird', 4)
      expect(venue.patrons).to eq []
    end
  end

  # Iteration 2

  describe '#add_patron' do
    # Test returns an array with the patrons names.
    it 'returns a list of patrons' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.patrons).to eq ['Mike', 'Megan', 'Bob']
    end
  end

  describe '#yell_at_patrons' do
    # Test that the return patron string values are converted to upper case.
    it 'returns a list of uppercased names' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
    end
  end

  describe '#over_capacity?' do
    # Check if the patron list is under the capacity limit.
    it 'checks at or below capacity limit' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.over_capacity?).to eq(false)
    end

    # Check if the patron list is over the capacity limit.
    it 'checks over capacity limit' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      venue.add_patron('James')
      venue.add_patron('Cat')

      expect(venue.over_capacity?).to eq(true)
    end
  end

  describe '#kick_out' do
    # Test to verify that no one is kicked out when at or below capacity.
    it 'it will not remove anyone if under capacity' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      venue.kick_out
      
      expect(venue.over_capacity?).to eq(false)
      expect(venue.patrons).to eq(['Mike', 'Megan', 'Bob'])
    end

    # Test removing patrons when over capacity.
    it 'it will remove last patrons if over capacity' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      venue.add_patron('James')
      venue.add_patron('Cat')

      expect(venue.over_capacity?).to eq(true)
      venue.kick_out
      expect(venue.over_capacity?).to eq(false)
      expect(venue.patrons).to eq(['Mike', 'Megan', 'Bob', 'James'])
    end
  end
end
