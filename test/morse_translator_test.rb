require 'pry'

require 'minitest/autorun'
require 'minitest/pride'

require './lib/morse_translator'


class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    assert_instance_of MorseTranslator, MorseTranslator.new
  end

  # def test_it_gets_attributes
  #
  # end

  # #################################################

  def test_it_translates
    # skip
    morse = MorseTranslator.new
    actual = morse.translate("hello world")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end






end
