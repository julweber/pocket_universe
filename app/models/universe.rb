class Universe

  attr_accessor :center,
    :number_of_stars,
    :solar_systems_with_planets_percentage,
    :habitable_zones_percentage,
    :life_factor_percentage

  # https://en.wikipedia.org/wiki/Observable_universe#Extrapolation_from_number_of_stars
  # somewhere in between 10^22 and 10^24
  DEFAULT_NUMBER_OF_STARS = 1e23

  # https://www.sciencedaily.com/releases/2010/01/100105161540.htm
  DEFAULT_PERCENTAGE_OF_SOLAR_SYSTEMS_WITH_PLANETS = 15

  # http://www.keckobservatory.org/recent/entry/one_in_five_stars_has_earth_sized_planet_in_habitable_zone
  DEFAULT_HABITABLE_ZONES_PERCENTAGE = 20

  # How friendly is the universe to potential life on habitable zone planets
  # 100 means there's life on all planets in habitable zones
  # Lotto probability: 1.0 / 139838160 => 7.1511238420185165e-09 => 1 million times more probable
  DEFAULT_LIFE_FACTOR_PERCENTAGE = 1e-15 # Pretty pessimistic


  def initialize(opts = {})
    default_hash = {
      number_of_stars: DEFAULT_NUMBER_OF_STARS,
      solar_systems_with_planets_percentage: DEFAULT_PERCENTAGE_OF_SOLAR_SYSTEMS_WITH_PLANETS,
      habitable_zones_percentage: DEFAULT_HABITABLE_ZONES_PERCENTAGE,
      life_factor_percentage: DEFAULT_LIFE_FACTOR_PERCENTAGE
    }
    new_opts = default_hash.merge opts

    @center = SpaceObjects::SpaceObject.new
    @number_of_stars = new_opts[:number_of_stars]
    @solar_systems_with_planets_percentage = new_opts[:solar_systems_with_planets_percentage]
    @habitable_zones_percentage = new_opts[:habitable_zones_percentage]
    @life_factor_percentage = new_opts[:life_factor_percentage]
  end

  def solar_systems_count
    number_of_stars
  end

  def solar_systems_without_planets_count
    number_of_stars * (100 - solar_systems_with_planets_percentage) / 100
  end

  def solar_systems_with_planets_count
    number_of_stars * solar_systems_with_planets_percentage / 100
  end

  def solar_systems_with_planets_in_habitable_zone_count
    solar_systems_with_planets_count * habitable_zones_percentage / 100
  end

  def solar_systems_with_life_count
    solar_systems_with_planets_in_habitable_zone_count * life_factor_percentage / 100
  end

  def life_percentage
    solar_systems_with_life_count.to_f / number_of_stars.to_f
  end

  def summary
    puts "Universe Setup:"
    puts ""
    puts "Solar system with planets percentage: #{solar_systems_with_planets_percentage}"
    puts "Solar system with planets in habitable zones percentage: #{habitable_zones_percentage}"
    puts "Life probility percentage: #{life_factor_percentage}"
    puts ""
    puts "- Number of stars: #{solar_systems_count}"
    puts "  - #{solar_systems_count.round.humanize}"
    puts ""
    puts ""
    puts "- Solar systems without planets: #{solar_systems_without_planets_count}"
    puts "  - #{solar_systems_without_planets_count.round.humanize}"
    puts ""
    puts ""
    puts "- Solar systems with planets: #{solar_systems_with_planets_count}"
    puts "  - #{solar_systems_with_planets_count.round.humanize}"
    puts ""
    puts ""
    puts "- Solar systems with planets in habitable zone: #{solar_systems_with_planets_in_habitable_zone_count}"
    puts "  - #{solar_systems_with_planets_in_habitable_zone_count.round.humanize}"
    puts ""
    puts ""
    puts "- Solar systems with life: #{solar_systems_with_life_count}"
    puts "  - #{solar_systems_with_life_count.round.humanize}"
    puts ""
    puts ""
    puts "- Life percentage within universe: #{life_percentage}"
    puts "  - #{life_percentage.round.humanize}"
    puts ""
    puts ""
  end

end
