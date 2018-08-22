require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require './lib/message'

class MessageTest < MiniTest::Test
  def text_it_exists
  message = Message.new("Hello World",morse_translator(morse_translator = MorseTranslator.new({"a" => ".-",
                  "b" => "-...",
                  "c" => "-.-.",
                  "d" => "-..",
                  "e" => ".",
                  "f" => "..-.",
                  "g" => "--.",
                  "h" => "....",
                  "i" => "..",
                  "j" => ".---",
                  "k" => "-.-",
                  "l" => ".-..",
                  "m" => "--",
                  "n" => "-.",
                  "o" => "---",
                  "p" => ".--.",
                  "q" => "--.-",
                  "r" => ".-.",
                  "s" => "...",
                  "t" => "-",
                  "u" => "..-",
                  "v" => "...-",
                  "w" => ".--",
                  "x" => "-..-",
                  "y" => "-.--",
                  "z" => "--..",
                  "1" => ".----",
                  "2" => "..---",
                  "3" => "...--",
                  "4" => "....-",
                  "5" => ".....",
                  "6" => "-....",
                  "7" => "--...",
                  "8" => "---..",
                  "9" => "----.",
                  "0" => "-----",
                  " " => " "}
                )))
  assert_instance_of Message, message
end

def test_correct_output
  morse_translator = MorseTranslator.new({"a" => ".-",
                  "b" => "-...",
                  "c" => "-.-.",
                  "d" => "-..",
                  "e" => ".",
                  "f" => "..-.",
                  "g" => "--.",
                  "h" => "....",
                  "i" => "..",
                  "j" => ".---",
                  "k" => "-.-",
                  "l" => ".-..",
                  "m" => "--",
                  "n" => "-.",
                  "o" => "---",
                  "p" => ".--.",
                  "q" => "--.-",
                  "r" => ".-.",
                  "s" => "...",
                  "t" => "-",
                  "u" => "..-",
                  "v" => "...-",
                  "w" => ".--",
                  "x" => "-..-",
                  "y" => "-.--",
                  "z" => "--..",
                  "1" => ".----",
                  "2" => "..---",
                  "3" => "...--",
                  "4" => "....-",
                  "5" => ".....",
                  "6" => "-....",
                  "7" => "--...",
                  "8" => "---..",
                  "9" => "----.",
                  "0" => "-----",
                  " " => " "}
                )
  message = Message.new("There are 3 ships", morse_translator)
  assert_equal "-......-.. .-.-.. ...-- ..........--....", message.translation
end

end
