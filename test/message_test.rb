require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require './lib/message'

require 'pry'

class MessageTest < Minitest::Test
  def test_if_it_exists
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    assert_instance_of Message, message
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_the_morse_translation
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, message.translation
  end

end
