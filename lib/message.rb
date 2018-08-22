class Message
  attr_accessor :message
                :morse_translator

  def initialize(message, morse_translator)
    @message = message
    @morse_translator = morse_translator
  end

  def translation
    message.message
  end
end
