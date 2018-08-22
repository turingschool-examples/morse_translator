require 'minitest/autorun'
require 'minitest/pride'
require './lib/message'

class MorseTranslatorTest < Minitest::Test
  def test_message_class_is_made
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of Message, message
  end

  def test_message_translates
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_equal "-......-.. .-.-.. ...-- ..........--....", message.translation
  end
end
