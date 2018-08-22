require 'minitest/autorun'
require 'minitest/pride'
require './lib/message'
require './lib/morse_translator'
require 'pry'

class MessageTest < Minitest::Test

  def test_new_instance_of_morse_translator_is_created
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_new_instance_of_message_created
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    assert_instance_of Message, message
  end

  def test_new_message_is_translated
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, message.translation
  end

  def test_another_message_is_translated
      morse_translator = MorseTranslator.new
      message = Message.new("sup", morse_translator)
      expected = ".....-.--."
      assert_equal expected, message.translation
    end

end
