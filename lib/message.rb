class Message

  attr_reader :text,
              :translator

  def initialize(text, translator)
    @text = text
    @translator = translator
  end

  def translation
    #something tells me its becuase i need to call the actual hash name
    #somewhere in here, but every time i do that, it errors out
    @translator.translate(@text)

  end

end
