#  unit  | abbr. | metric equiv.
#  ----- | ----- | --------------
#  meter |     m |          1.00
#   feet |    ft |          3.28
#   inch |    in |         39.37

UNITS = { m: 1.0, ft: 3.28, in: 39.37 }
def convert_length(length, from: :m, to: :in)
  (length / UNITS[from] * UNITS[to]).round(2)
end