require 'pry'

require 'minitest/autorun'
require 'minitest/pride'

require './lib/morse_translator'


class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    assert_instance_of MorseTranslator, MorseTranslator.new
  end

  # #################################################

  def test_it_translates
    morse = MorseTranslator.new
    actual = morse.translate("hello world")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end

  def test_it_can_encrypt_a_downcase_string
    morse = MorseTranslator.new
    actual = morse.encrypt("hello world")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end

  def test_it_can_convert_case
    morse = MorseTranslator.new
    string = "Hello World"
    actual = morse.convert_case(string)
    assert_equal "hello world", actual
  end

  # #####################################################

  def test_it_can_convert_to_english
    skip
    morse = MorseTranslator.new
    actual = morse.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
    assert_equal "helloworld", actual
    # HOW to KEEP SPACES that are Spaces
    # Above is not what would be output by translator!!
  end

  def test_it_can_manage_spaces_in_message
    skip
    morse = MorseTranslator.new
    string = "Hello  world"
    try_me = morse.manage_message_spaces(string)
    expected = ["H", "e", "l", "l", "o", nil, " ", "w", "o", "r", "l", "d"]
    assert_equal expected, try_me
  end

  # this and test_it_can_convert_to_english need to be renamed and refactored
  # intended to do different things
  def test_it_can_reverse_convert
    skip
    morse = MorseTranslator.new
    string = "Hello  world"
    try_me = morse.manage_message_spaces(string)
    arr = ["H", "e", "l", "l", "o", nil, " ", "w", "o", "r", "l", "d"]
  end

  def test_it_can_translate_morse_to_english
    morse = MorseTranslator.new
    string = ".... . .-.. .-.. ---  .-- --- .-. .-.. -.."
    actual = morse.morse_to_eng(string)
    assert_equal "hello world", actual
  end


end
