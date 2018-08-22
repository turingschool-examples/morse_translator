require 'minitest/autorun'
require 'minitest/pride'
require './message'
require './morse_translator'

class MessageTest < Minitest::Test
  def test_that_the_message_class_exists
    message = Message.new
    assert_instance_of Message, message
  end

  def test_that_the_message_class_exists
    MorseTranslator.new
    skip
    message = Message.new("There are 3 ships", morse_translator)
  end
end
