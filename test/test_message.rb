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
    morse = MorseTranslator.new
    code = Message.new("There are 3 ships", morse)

    assert_equal "There are 3 ships", code.text
    assert_equal morse, code.translator

  end
end
