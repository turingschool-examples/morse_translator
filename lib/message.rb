require 'pry'

class Message

  attr_reader :text, :translator

  def initialize(text, translator)
    @text = text
    @translator = translator
  end

  def translation
    text_array = text.downcase.chars
  end

end
