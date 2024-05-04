require "minitest/autorun"
require_relative "../lib/word_synth"
require_relative "../lib/effects"

class WordSynthTest < Minitest::Test
  def test_play_without_effect
    synth = WordSynth.new
    assert_equal "Ruby is fun!", synth.play("Ruby is fun!")
  end
end
