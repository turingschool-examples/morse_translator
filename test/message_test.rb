require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require  './lib/message'

class MessageTest < Minitest::Test

  def test_it_exists
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of MorseTranslator, morse_translator
    assert_instance_of Message, message
  end

  def test_it_takes_inputs
      morse_translator = MorseTranslator.new
      message = Message.new("There are 3 ships", morse_translator)
      expected = "There are 3 ships"
      assert_equal expected, message.input
    end

  def test_it_takes_instance_morse_translator
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    expected = morse_translator
    assert_equal expected, message.translator
  end

  def test_it_can_create_translation
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, message.translation
  end
  
end