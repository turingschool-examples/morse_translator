require 'minitest/autorun'
require 'minitest/pride'
require './lib/message'
require './lib/morse_translator'
require 'pry'

class MessageTest < Minitest::Test


  def setup
    @mt = MorseTranslator.new
  end

  def test_it_exists
    message = Message.new("hello", @mt)
    assert_instance_of Message, message
  end

  def test_it_can_translate_a_single_letter
    message = Message.new("a", @mt)
    assert_equal ".-", message.translation
  end

  def test_it_can_tranlsate_multiple_letters
    message = Message.new("ab", @mt)
    assert_equal ".--...", message.translation
  end

  def test_it_translates_a_long_mixed_sentence
    message = Message.new("There are 3 ships", @mt)
    translated_message = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal translated_message, message.translation
  end

end
