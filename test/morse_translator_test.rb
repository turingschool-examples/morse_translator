require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'


class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    translation = MorseTranslator.new
    assert_instance_of MorseTranslator, translation
  end


end
