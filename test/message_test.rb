require 'minitest/autorun'
require 'minitest/pride'
require './lib/message'
require './lib/morse_translator'

class MessageTest < Minitest::Test

  def test_check_it_exists
    message = Message.new("There are 3 ships", morse_translator)

    assert_instance_of Message, morse_translator
  end

  def test_it_has_attributes
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)

    expected = "There are 3 ships"
    actual = message.text
    assert_equal expected, actual
  end

end
