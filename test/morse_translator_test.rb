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

end
