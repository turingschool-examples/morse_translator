class Message

  attr_reader :text,
              :translator

  def initialize(text, translator)
    @text = text
    @translator = translator
  end

  def translation
    #for some reason, this is printing the message out twice. whyyyy...
    @translator.translate(@text)

  end

end
