
class Message
  attr_reader :message,
              :translator

  def initialize(message, translator)
    @message = message
    @translator = translator
  end

  def translation
    @translator.translate(message)
  end

end
