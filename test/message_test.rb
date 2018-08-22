require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require './lib/message'

class MessageTest < Minitest::Test

  def test_it_exists
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of Message, message
  end

  def test_it_has_text
    morse_translator = MorseTranslator.new
    message = Message.new("There are 3 ships", morse_translator)
    assert_equal "There are 3 ships", message.text
  end

  def test_it_has_a_translator
    translator = MorseTranslator.new
    message = Message.new("There are 3 ships", translator)
    assert_instance_of MorseTranslator, message.translator
  end

  def test_translation
    translator = MorseTranslator.new
    message = Message.new("There are 3 ships", translator)
    assert_equal "-......-.. .-.-.. ...-- ..........--....", message.translation
  end
end
