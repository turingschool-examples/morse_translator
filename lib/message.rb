# message

class Message
  attr_reader :text,
              :translator

  def initialize(text, translator)
    @text = text
    @translator = translator
  end

  def translation
    morse_translator = MorseTranslator.new
    morse_translator.translate(@text)
  end

end
