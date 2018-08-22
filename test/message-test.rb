require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require './lib/message'

class MessageTest < Minitest::Test
  def test_it_exists
      translator = Translator.new
      message = Message.new("There are 3 ships", translator)
      assert_instance_of Message , message
  end

  def test_it_has_a_message
    translator = Translator.new
    message = Message.new("There are 3 ships", translator)
    assert_equal "There are 3 ships" , message.text
  end

  def test_it_has_a_translator
    translator = Translator.new
    message = Message.new("There are 3 ships", translator)
    assert_equal translator , message.translator
  end

  def test_it_can_translate
    skip
    translator = Translator.new
    message = Message.new("There are 3 ships", translator)
    assert_equal "-......-.. .-.-.. ...-- ..........--...." , message.translation
  end
end
