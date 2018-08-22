require 'pry'
require './lib/morse_translator'

class Message
  attr_reader :string,
              :morse_translator

  def initialize(string, morse_translator)
    @string = string
    @morse_translator = morse_translator
  end
end
