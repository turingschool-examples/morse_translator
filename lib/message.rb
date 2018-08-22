class Message

  attr_reader :text,
              :translator

  def initialize(text, translator)
    @text = text
    @translator = translator
  end

  def translation
    #so in this method i'm taking the text and passing it as the argument into th
    #morse_tranlsator method called translate. I think i need to call the object of the
    #morese translator that i called and do stuff to it.
    @translator.translate(@text)

  end

end
