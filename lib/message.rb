class Message
  attr_reader :text,
              :translation
  def initialize (string,morse_translator)
    @text = string
    @morse_translator = morse_translator
  end

  def translation
    morse_translator.translate(@text)
  end
end 
