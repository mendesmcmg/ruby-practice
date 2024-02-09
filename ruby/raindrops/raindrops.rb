# frozen_string_literal: true

class Raindrops
  def self.convert(number)
    divisors = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }
    raindrop = ''
    divisors.each do |key, value|
      raindrop += value if (number % key).zero?
    end
    raindrop.empty? ? number.to_s : raindrop
  end
end
