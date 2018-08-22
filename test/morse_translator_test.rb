require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'


class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    translation = MorseTranslator.new

    assert_instance_of MorseTranslator, translation
  end



  def test_translate
    morse_translator = MorseTranslator.new

    actual = morse_translator.translate("hello world")

    assert_equal "......-...-..--- .-----.-..-..-..", actual
  end

  def test_translate_even_with_caps
    morse_translator = MorseTranslator.new

    actual = morse_translator.translate("There are 3 ships")

    assert_equal "-......-.. .-.-.. ...-- ..........--....", actual
  end


  def test_it_can_translate_to_eng
    morse_translator = MorseTranslator.new

    actual = morse_translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")

    assert_equal "hello world", actual

  end



end
