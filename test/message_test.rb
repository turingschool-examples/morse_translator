require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require './lib/message.rb'

class MessageTest < Minitest::Test

  def test_it_exists
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of Message, message
  end

  def test_it_has_string
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_equal "There are 3 ships", message.text
  end

  def test_it_has_translator
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_equal morse_translator, message.translator
  end

  def test_it_can_translate_its_text
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, message.translation
  end

end
