require "minitest/autorun"
require_relative "../lib/convert_hash_syntax"

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax_with_empty_hash
    assert_equal "{}", convert_hash_syntax("{}")
  end

  def test_convert_hash_syntax_with_non_empty_hash
    input = <<~TEXT
    {
      :name => 'Alice',
      :age=>20,
      :gender   =>   :female
    }
    TEXT
    expected = <<~TEXT
    {
      name: 'Alice',
      age: 20,
      gender: :female
    }
    TEXT
    assert_equal expected, convert_hash_syntax(input)
  end
end
