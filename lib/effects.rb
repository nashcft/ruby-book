module Effects
  def self.reverse
    lambda { |words| words.split(" ").map(&:reverse).join(" ") }
  end

  def self.echo(rate)
    lambda { |words|
      words.each_char.map { |c| c == " " ? c : c * rate }.join
    }
  end
end