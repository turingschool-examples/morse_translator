require 'pry'


require 'minitest/autorun'
require 'minitest/pride'

require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

    def test_it_exists
        morse = MorseTranslator.new
        assert_instance_of MorseTranslator, morse
    end

    def test_it_can_translate
        morse = MorseTranslator.new
        morse.translate("Hello World").downcase!
        assert_equal "hello world", morse.translate("Hello World")
    end 
end


