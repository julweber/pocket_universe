require 'spec_helper'

describe Coordinate do

  describe '.initialize' do

    context 'no parameters' do
      it 'should initilize at 0,0,0' do
        coord = Coordinate.new
        expect(coord.x).to eq 0.0
        expect(coord.y).to eq 0.0
        expect(coord.z).to eq 0.0
      end
    end

    context 'with params' do
      let(:x) { 1.0 }
      let(:y) { -200.0 }
      let(:z) { 8.0 }

      it 'should initilize at the given coords' do
        coord = Coordinate.new(x,y,z)
        expect(coord.x).to eq x
        expect(coord.y).to eq y
        expect(coord.z).to eq z
      end
    end

  end

  describe '#distance_between' do

    context 'distance to 0,0,0' do
      let(:center) { Coordinate.new(0.0,0.0,0.0) }

      it 'should be 1 for 1 unit into x direction' do
        coord = Coordinate.new(1.0,0.0,0.0)
        expect(coord.distance_between(center)).to eq 1.0
      end

      it 'should be 1 for 1 unit into y direction' do
        coord = Coordinate.new(0.0,1.0,0.0)
        expect(coord.distance_between(center)).to eq 1.0
      end

      it 'should be 1 for 1 unit into y direction' do
        coord = Coordinate.new(0.0,0.0,-1.0)
        expect(coord.distance_between(center)).to eq 1.0
      end
    end

    context 'between 2 points that are 8 units away' do
      it 'should calculate the distance of 8.0' do
        coord_a = Coordinate.new(200.0,100.0,-300.0)
        coord_b = Coordinate.new(200.0,100.0,-308.0)
        expect(coord_a.distance_between(coord_b)).to eq 8.0
      end
    end

    context 'distance to self' do
      it 'should be 0' do
        coord = Coordinate.new 2.3,8.9,19.0
        expect(coord.distance_between(coord)).to eq 0.0
      end
    end

  end

end
