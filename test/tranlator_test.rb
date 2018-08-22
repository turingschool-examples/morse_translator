
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/morse_translator'



class MorseTranslatorTest< Minitest::Test

    def test_it_exists
      morse_translator = MorseTranslator.new
      assert_instance_of MorseTranslator,morse_translator
    end

    def test_it_translate
      morse_translator = MorseTranslator.new ("......-...-..--- .-----.-..-..-..")
      assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate("hello world")
    end
    
end



 # pry(main)> morse_translator.translate("hello world")
 # #=> "......-...-..--- .-----.-..-..-.."
