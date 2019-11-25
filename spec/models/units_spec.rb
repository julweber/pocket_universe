require 'spec_helper'

describe Units do
  describe '.convert_au_to_ly' do
    it 'should convert au to ly' do
      one_au_in_ly = Units::AU
      five_au_in_ly = Units::AU * 5.0
      expect(Units.convert_au_to_ly(5.0)).to eq five_au_in_ly
    end
  end

  describe '.convert_au_to_km' do
    it 'should convert au to km' do
      one_au_in_ly = Units::AU
      one_ly_in_km = Units::LY
      five_au_in_km = 5.0 * one_au_in_ly * one_ly_in_km
      expect(Units.convert_au_to_km(5.0)).to eq five_au_in_km
    end
  end

  describe '.convert_ly_to_au' do
    it 'should convert ly to au' do
      one_ly_in_au = 1 / Units::AU
      five_ly_in_au = 5.0 * one_ly_in_au
      expect(Units.convert_ly_to_au(5.0)).to eq five_ly_in_au
    end
  end

  describe '.convert_ly_to_km' do
    it 'should convert ly to km' do
      one_ly_in_km = Units::LY
      five_ly_in_km = 5.0 * one_ly_in_km
      expect(Units.convert_ly_to_km(5.0)).to eq five_ly_in_km
    end
  end

  describe '.convert_km_to_au' do
    it 'should convert km to au' do
      one_km_in_ly = 1 / Units::LY
      one_ly_in_au = 1 / Units::AU
      five_km_in_au = 5.0 * one_km_in_ly * one_ly_in_au
      expect(Units.convert_km_to_au(5.0)).to eq five_km_in_au
    end
  end

  describe '.convert_km_to_ly' do
    it 'should convert km to ly' do
      one_km_in_ly = 1 / Units::LY
      five_km_in_ly = 5.0 * one_km_in_ly
      expect(Units.convert_km_to_ly(5.0)).to eq five_km_in_ly
    end
  end

  describe '.convert_kg_to_sm' do
    it 'should convert kg to sm' do
      one_kg_in_sm = 1 / Units::SM
      ten_high_thirty_kg_in_sm = 1e30 * one_kg_in_sm
      expect(Units.convert_kg_to_sm(1e30)).to be_within(1e-10).of(ten_high_thirty_kg_in_sm)
    end
  end

  describe '.convert_sm_to_kg' do
    it 'should convert sm to kg' do
      one_sm_in_kg = Units::SM
      five_sm_in_kg = 5.0 * one_sm_in_kg
      expect(Units.convert_sm_to_kg(5.0)).to be_within(1e-10).of(five_sm_in_kg)
    end
  end

end
