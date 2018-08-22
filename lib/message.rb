require './lib/morse_translator.rb'

class Message
  attr_reader :text, :translator

  def initialize(text, translator)
    @text  = text
    @translator   = translator
  end

  def translation
    morse_translator.translate(@text)
  end

end
