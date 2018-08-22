
class MorseTranslator
  attr_reader   :dictionary,
                # :translate

  def initialize(translate)
    @dictionary = { "a" => ".-",
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
    # @translate = translate
  end
  def translate
    translate = @dictionary[:a, :b, :c, :d, :e, :f, :g, :h,
              :i, :j, :k, :l, :m, :n, :o, :p,
              :q, :r, :s, :t, :u, :v, :w, :x,
              :y, :z, 1, 2, 3, 4, 5, 6, 7, 8,
              9, 0, ""]
#     translate = Hash[keys.split("").zip(values)]
# MORSE.default=" "
# def translate(values)
#   values.downcase.split("").map{|c|translate[c]}.join(" ")
# # end
  end
end
