require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/message.rb'

class MessageTest < Minitest::Test
  def test_it_exists
    morse_translator = MorseTranslator.new
    newmessage = Message.new("There are 3 ships", morse_translator)
    assert_instance_of Message, newmessage
  end

  def test_translate
    morse_translator = MorseTranslator.new
    newmessage = Message.new("There are 3 ships", morse_translator)
    # binding.pry
    # message.translation
    newmessage.translation
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, actual
  end

end
