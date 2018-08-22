require './lib/morse_translator'
require 'pry'
class Message
  attr_reader :text,
              :morse_translator

  def initialize(text, morse_translator)
    @text             = text
    @morse_translator = morse_translator
  end

  def translation
    translation = ""
    @text.each_char do |char|
      translation << @morse_translator.dictionary[char.downcase]
    end
    translation
  end

end
