require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require 'pry'

class MorseTranslatorTest < Minitest::Test

  def test_a_new_instance_is_created
    morse_translator = MorseTranslator.new

    assert_instance_of MorseTranslator, morse_translator
  end

  def test_translation_of_one_character
    morse_translator = MorseTranslator.new

    assert_equal "....", morse_translator.find_morse_code_letter("h")
  end

  def test_message_is_translated_to_code
    morse_translator = MorseTranslator.new

    expected = ["....", ".", ".-..", ".-..", "---", " ", ".--", "---", ".-.", ".-..", "-.."]
    actual = morse_translator.find_morse_code_words("hello world")
    assert_equal expected, actual
  end

  def test_translation_works
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse_translator.translate('hello world')
  end

  def test_translation_works_again
    morse_translator = MorseTranslator.new

    expected = ".....-.--."
    assert_equal expected, morse_translator.translate('sup')
  end

  def test_capitalization_works
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse_translator.translate('Hello World')
  end

  def test_message_with_number_works
    morse_translator = MorseTranslator.new

    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, morse_translator.translate("There are 3 ships")
  end

  def test_change_one_code_to_english_letter
    morse_translator = MorseTranslator.new

    assert_equal "x", morse_translator.find_letter_from_morse("-..-")
  end

  def test_change_coded_words_to_english_words
    skip
    morse_translator = MorseTranslator.new

    assert_equal ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"], morse_translator.word_from_morse(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end

  def test_morse_back_to_english
    skip
    morse_translator = MorseTranslator.new

    expected = morse_translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
    assert_equal "hello world", expected
  end

end
