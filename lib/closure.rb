def generate_proc(array)
  counter = 0
  Proc.new do
    counter += 10
    array << counter
  end
end

v1 = []
p1 = generate_proc(v1)
p v1  # -> []

p1.call
p v1  # -> [10]
p1.call
p v1  # -> [10, 20]
p1.call
p1.call
p v1  # -> [10, 20, 30, 40]

v2 = []
p2 = generate_proc(v2)
p v2  # -> []

p2.call
p1.call
p v2  # -> [10]
p v1  # -> [10, 20, 30, 40, 50]