require 'pry'


require 'minitest/autorun'
require 'minitest/pride'

require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

    def test_it_exists
        morse = MorseTranslator.new
        assert_instance_of MorseTranslator, morse
    end

    def test_it_can_process_text
        morse = MorseTranslator.new
        # binding.pry
        # assert_equal "....", morse.translate("h")
        assert_equal "......", morse.translate("hi")
    end 
end


