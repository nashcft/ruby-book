#  unit  | abbr. | metric equiv.
#  ----- | ----- | --------------
#  meter |     m |          1.00
#   feet |    ft |          3.28
#   inch |    in |         39.37

def convert_length(length, unit_from, unit_to)
  units = { "m" => 1.0, "ft" => 3.28, "in" => 39.37 }
  (length / units[unit_from] * units[unit_to]).round(2)
end