require "minitest/autorun"
require "minitest/pride"
require "./lib/morse_translator"
require "./lib/message"

class MessageTest < Minitest::Test
  def test_message_exists
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of Message, message
  end

  def test_message_has_translator
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of MorseTranslator, message.translator
  end

  def test_message_has_text
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_equal "There are 3 ships", message.text
  end

  def test_case_name
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_equal "-......-.. .-.-.. ...-- ..........--....", message.translation
  end
end
