require "minitest/autorun"
require_relative "../lib/regexp_checker"

class RegexpCheckerTest < Minitest::Test
  def test_invalid_and_matched
    inputs = [
      "123-456-789\n",
      "[1-6+\n",
      "[1-6]+\n"
    ]
    expected = [
      "Text?: ",
      'Pattern?: ',
      "Invalid pattern: premature end of char-class: /[1-6+/\n",
      'Pattern?: ',
      "Matched: 123, 456\n"
    ].join

    stub :gets, -> { inputs.shift } do
      assert_output(expected) { regexp_checker_main }
    end
  end

  def test_no_match
    inputs = [
      "abc-def-ghi\n",
      "[1-6]+\n"
    ]
    expected = [
      "Text?: ",
      "Pattern?: ",
      "Nothing matched.\n"
    ].join

    stub :gets, -> { inputs.shift } do
      assert_output(expected) { regexp_checker_main }
    end
  end
end
