# rubocop:disable Lint/Syntax

module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city.upcase[0, 4].to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo = ship_identifier.to_s[0,3]
    if cargo.include?('OIL') || cargo.include?('GAS')
      :A
    else
      :B
    end
  end
end
