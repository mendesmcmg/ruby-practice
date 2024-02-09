# frozen_string_literal: true

class Hamming
  def self.compute(strand1, strand2)
    length1 = strand1.length
    length2 = strand2.length
    raise ArgumentError if length1 != length2

    (0...length1).count do |index|
      strand1[index] != strand2[index]
    end
  end
end
