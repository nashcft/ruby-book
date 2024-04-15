def to_hex(a, b, c)
  [a, b, c].sum("#") do |n|
    n.to_s(16).rjust(2, "0")
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map { |h| h.hex }
end