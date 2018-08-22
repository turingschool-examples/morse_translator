require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require './lib/message.rb'

class MessageTest < Minitest::Test

  def test_message_exists_and_takes_translator_as_argument
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    assert_instance_of Message, message
  end

  def test_message_can_be_translated
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    assert_equal "-......-.. .-.-.. ...-- ..........--....", message.translation
  end

  def test_message_can_receive_text
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_equal "There are 3 ships", message.text
  end

  def test_message_has_morse_translator
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_equal morse_translator, message.translator
  end

end
