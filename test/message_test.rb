require "minitest/autorun"
require "minitest/emoji"
require "./lib/message"
require "./lib/morse_translator"

class MessageTest < MiniTest::Test
  def test_it_exist
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    assert_instance_of Message, message
  end

  def test_it_can_translate
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, message.translation
  end 
end
