require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require 'pry'

class MorseTranslatorTest < Minitest::Test


  def setup
    @mt = MorseTranslator.new
  end

  def test_it_exists
    assert_instance_of MorseTranslator, @mt
  end

  def test_it_can_translate_a_single_letter
    assert_equal ".-", @mt.translate("a")
  end

  def test_it_can_translate_multiple_letters_passed_in_one_string
    # binding.pry
    assert_equal ".--...", @mt.translate("ab")
  end

  def test_it_translates_hello_world
    assert_equal "......-...-..--- .-----.-..-..-..", @mt.translate("hello world")
  end

  def test_it_can_translate_an_uppercase_letter
    assert_equal ".-", @mt.translate("A")
  end

  def test_it_can_translate_multiple_uppecase_letters
    assert_equal ".--...", @mt.translate("AB")
  end

  def test_it_can_tranlsate_uppercase_and_numbers
    assert_equal ".------", @mt.translate("A0")
  end

  def test_it_can_translate_a_mixed_input
    morse_output = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal morse_output, @mt.translate("There are 3 ships")
  end

  def test_it_can_translate_one_morse_symbol_to_a_letter
    assert_equal "a", @mt.morse_to_eng(".-")
  end

  def test_it_translates_a_morse_symbol_and_number
    assert_equal "a0", @mt.morse_to_eng(".- -----")
  end

  def test_it_translates_spaces_too
    assert_equal "a 0", @mt.morse_to_eng(".- / -----")
  end

end
