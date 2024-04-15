def to_hex(a, b, c)
    "#" +
    a.to_s(16).rjust(2, "0") +
    b.to_s(16).rjust(2, "0") +
    c.to_s(16).rjust(2, "0")
end