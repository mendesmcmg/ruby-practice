# frozen_string_literal: true

class AssemblyLine
  def initialize(speed)
    @items_per_hour = 221.0
    @speed = speed
  end

  def production_rate_per_hour
    @speed
    if (@speed >= 1) && (@speed <= 4)
      production = (@speed * @items_per_hour)
    elsif (@speed >= 5) && (@speed <= 8)
      production = (@speed * @items_per_hour) * 0.9
    elsif @speed == 9
      production = (@speed * @items_per_hour) * 0.8
    elsif @speed == 10
      production = (@speed * @items_per_hour) * 0.77
    end
    production
  end

  def working_items_per_minute
    working_items = production_rate_per_hour / 60
    working_items.to_i
  end
end
