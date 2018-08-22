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

    actual = morse_translator.translate("There are 3 ships")

    assert_equal "-......-.. .-.-.. ...-- ..........--....", actual

  end

  def test_translate
    morse_translator = MorseTranslator.new

    actual = morse_translator.translate("cat")

    assert_equal "-.-..--", actual

  end



end
