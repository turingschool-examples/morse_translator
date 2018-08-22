require './morse_translator'

class Message
  attr_reader :text, :translator
  def initialize(text, morse_translator)
    @text = text
    @translator = morse_translator
  end

  def translation
    morse_translator(@text)
  end
end
