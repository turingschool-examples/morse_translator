# message_test

require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require './lib/message'

class MessageTest < Minitest::Test

  def test_it_exists
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of(MorseTranslator, morse_translator)
  end


end
