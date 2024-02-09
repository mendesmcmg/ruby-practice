# frozen_string_literal: true

class Series
  def initialize(s)
    @s = s
  end

  def slices(n)
    raise ArgumentError if n > @s.length

    limit = @s.length - n
    resp = []
    (0..limit).each do |i|
      resp.append(@s[i..(i + n) - 1])
    end
    resp
  end
end
