require './lib/morse_translator.rb'
require 'pry'

class Message
    attr_reader :text,
                :translator

  def initialize(text, translator)
    @text = text
    @translator = translator
  end

end
