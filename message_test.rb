require 'minitest/autorun'
require 'minitest/pride'
require './message'
require './morse_translator'

class MessageTest < Minitest::Test
  def test_that_the_message_class_exists
    message = Message.new
    assert_instance_of Message, message
  end

  def test_that_the_message_class_exists
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of Message, message
  end

  def test_that_the_translate_method_translates_text_to_morse
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    message.translation
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, actual
  end
end
