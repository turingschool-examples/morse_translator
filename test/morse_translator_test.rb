require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    morse = MorseTranslator.new
    assert_instance_of MorseTranslator, morse
  end

  def test_translating_lower_case_words_works
    morse = MorseTranslator.new
    assert_equal "hello world", morse.translate("hello world")
  end

end
