def to_hex(a, b, c)
  [a, b, c].sum("#") do |n|
    n.to_s(16).rjust(2, "0")
  end
end