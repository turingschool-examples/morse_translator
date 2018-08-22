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

  def test_it_can_convert_case
    morse = MorseTranslator.new
    string = "Hello World"
    actual = morse.convert_case(string)
    assert_equal "hello world", actual
    # TO DO -- add more tests via below
      # actual_1 = morse_translator.translate("hello world")
      # expected_1 = "......-...-..--- .-----.-..-..-.."
      # assert_equal expected_1, actual_1
      # actual_2 = morse_translator.translate("Hello World")
      # expected_2 "......-...-..--- .-----.-..-..-.."
      # assert_equal expected_2, actual_2
      # actual_3 = morse_translator.translate("There are 3 ships")
      # expected_3 "-......-.. .-.-.. ...-- ..........--...."
      # assert_equal expected_3, actual_3
  end


end
