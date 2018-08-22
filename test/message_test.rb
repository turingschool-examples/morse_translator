require 'pry'

require 'minitest/autorun'
require 'minitest/pride'

require './lib/morse_translator'
require './lib/message'


class MessageTest < Minitest::Test

  def test_it_exists
    morse = MorseTranslator.new
    assert_instance_of Message, Message.new("String", morse)
  end

  def test_it_gets_attributes
    morse = MorseTranslator.new
    message = Message.new("String", morse)

    assert_equal "String", message.text
    assert_equal morse, message.translator
  end

  # ##############################################
  

end
