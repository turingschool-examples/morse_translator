require 'pry'
class Message
  attr_reader :input,
              :translator
  def initialize(input, translator)
    @input = input
    @translator = translator
  end

  def translation

  binding.pry
  end
end