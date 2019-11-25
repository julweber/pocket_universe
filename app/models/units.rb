module Units
  AU = 1.58125074e-05 # in lightyears : 1 AU = 1,58125074 · 10⁻⁵ Lightyears
  LY = 9460730472580.8 # in km : (1 Ly): 9 460 730 472 580,8 km ≈ 9,5 Billionen km = 9,5 Billionen m
  SM = 1.9891e30 # SUN Mass in kg

  def self.convert_au_to_ly(value)
    value * AU
  end

  def self.convert_au_to_km(value)
    value * AU * LY
  end

  def self.convert_ly_to_au(value)
    value / AU
  end

  def self.convert_ly_to_km(value)
    value * LY
  end

  def self.convert_km_to_au(value)
    value / LY / AU
  end

  def self.convert_km_to_ly(value)
    value / LY
  end

  def self.convert_kg_to_sm(value)
    value / SM
  end

  def self.convert_sm_to_kg(value)
    value * SM
  end

end
