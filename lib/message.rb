require 'pry'
class Message
    attr_reader :text, :translator
  def initialize(text, translator)
    @text = text
    @translator = translator
    # @morse_translator = MorseTranslator.new
  end

  def translation
    translator.translate(text)
  end

end
