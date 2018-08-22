require 'pry'




class Message

  attr_reader :text, :translator

  def initialize(text, translator)
    # text = anycase string
    # translator = trans object
    @text = text
    @translator = translator
  end

end
