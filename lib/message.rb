require './lib/morse_translator'

class Message
  attr_reader :text,
              :morse_translator

  def initialize(text, morse_translator)
    @text             = text
    @morse_translator = morse_translator
    @reverse_dictionary = @morse_translator.dictionary.invert
  end

  def translation
    words = @text.split(" ")
    translated_text = ""
    @words.each do |word|
      translated_text << @reverse_dictionary[word]
    end
  end
end
