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
    message = Message.new("Hello World", morse)

    assert_equal "Hello World", message.text
    assert_equal morse, message.translator
  end

  # ##############################################

  def test_it_can_be_translated
    morse = MorseTranslator.new
    message = Message.new("Hello World", morse)
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected , message.translation
  end

end
