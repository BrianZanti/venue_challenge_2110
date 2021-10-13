require 'rspec'
require '../lib/venue'

describe Venue do
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
    it 'returns a list of patrons' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.patrons).to eq ['Mike', 'Megan', 'Bob']
    end
  end

  describe '#yell_at_patrons' do
    it 'returns a list of uppercased names' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
    end
  end

  # Iteration 3

  describe '#over_capacity?' do
    it 'checks if patron size is over capcity (bool)' do
      venue = Venue.new('Watermelon', 3)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      venue.add_patron('Josh')

      expect(venue.over_capacity?).to be true
    end

    # Iteration 4

  describe '#kick_out' do
    it 'removes patrons until under or at capacity' do
      venue = Venue.new('Soeu', 3)
      venue.add_patron('Joe')
      venue.add_patron('Moe')
      venue.add_patron('Boe')
      venue.add_patron('Dingus')
      venue.kick_out

      expect(venue.over_capacity?).to be false
    end
  end


    end
end
