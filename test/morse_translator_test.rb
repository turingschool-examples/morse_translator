require './lib/morse_translator'
require 'minitest/autorun'
require 'minitest/pride'

class MorseTransTest < Minitest::Test
  def instance_of_morse_translator
    morse_translator = MorseTranslator.new

    assert_instance_of MorseTranslator, morse_translator
  end

  def morse_tranlate_check
    skip
    morse_translator = MorseTranslator.new

    assert_equal translate, morse_translator.translate("hello world")
  end
end
