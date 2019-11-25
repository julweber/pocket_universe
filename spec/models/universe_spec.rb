require 'spec_helper'

describe Universe do

  describe '#solar_systems_with_planets_count' do
    let(:setup) {
      {
        solar_systems_with_planets_percentage: 20,
        number_of_stars: 100
      }
    }
    it 'should calculate via the number of stars and solar system percentage' do
      un = Universe.new setup
      expect(un.solar_systems_with_planets_count).to eq 20
    end
  end

end
