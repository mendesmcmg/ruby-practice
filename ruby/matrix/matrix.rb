# frozen_string_literal: true

class Matrix
  attr_reader :matrix, :lines

  def initialize(matrix)
    @matrix = matrix
    @lines = @matrix.split("\n")
  end

  def rows
    @lines.map { |row| row.split(' ').map(&:to_i) }
  end

  def columns
    @columns = rows.transpose
  end
end
