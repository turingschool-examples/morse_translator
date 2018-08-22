require 'minitest/autorun'
require 'minitest/pride'
require './lib/message.rb'

class MessageTest < Minitest::Test
  def test_it_if_exits
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    assert_instance_of Message, message
  end

  def test_if_it_has_attributes
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    assert_equal "There are 3 ships", message.text
    assert_equal morse_translator, message.translator

  end
  def test_if_it_can_translate
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    assert_equal "-......-.. .-.-.. ...-- ..........--....",
    message.translation
  end
end
