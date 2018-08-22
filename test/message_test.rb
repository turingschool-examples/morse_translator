require 'minitest/autorun'
require 'minitest/pride'
require './lib/message'

class MessageTest < Minitest::Test

  def test_it_exists
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of Message, message
  end

  def test_it_has_text
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    actual = message.text
    expected = "There are 3 ships"
    assert_equal expected, actual
  end
    
  def test_it_has_a_morse_translator_object
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of MorseTranslator, message.translator
  end
    
  def test_it_has_translation_method
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    actual = message.translation
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, actual
  end
    
end
