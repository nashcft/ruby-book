module Effects
  def self.reverse
    lambda { |words| words.split(" ").map(&:reverse).join(" ") }
  end
end