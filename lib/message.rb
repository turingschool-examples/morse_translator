require 'pry'


class Message

  attr_reader :text, :translator

  def initialize(text, translator)
    @text = text
    @translator = translator
  end

  def translation
    @translator.translate(@text)
  end

end
