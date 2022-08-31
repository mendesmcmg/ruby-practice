class Series
  def initialize(s)
    @s = s
  end

  def slices(n)
    if n > @s.length then raise ArgumentError end
    
      limit = (@s.length) - n
    resp = []
    for i in 0..limit
      resp.append(@s[i..(i+n)-1])
    end
    resp
  end
end
