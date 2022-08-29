class Matrix
  attr_reader :matrix, :lines
  def initialize(matrix)
    @matrix = matrix
    @lines = @matrix.split("\n")
  end
  
  def rows 
   @lines.map {|row| row.split(" ").map{ |num| num.to_i }}
  end

  def columns
    @columns = []
    c = 0
    for row in rows
      for cols in row
        if @columns[c.remainder(row.length)] === nil
          @columns.append([])
        end
        @columns[c.remainder(row.length)].append(cols)
        c += 1
      end
    end
    @columns
  end
end