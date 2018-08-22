require './lib/message'
require './lib/morse_translator'
require 'minitest/autorun'
require 'minitest/pride'

class MessageTest < Minitest::Test
  def test_it_exists
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    assert_instance_of Message, message
  end

  def test_it_can_translate
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    expected = "-......-.. .-.-.. ...-- ..........--...."
    actual = message.translation
    assert_equal expected, actual
  end
end
