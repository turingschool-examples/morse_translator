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
    translate_it = @text.chars
    @morse_translator.translate(translate_it)
  end
end
