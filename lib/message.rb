class Message
  attr_reader :input,
              :translator
  def initialize(input, translator)
    @input = input
    @translator = translator
  end

  def translation
    translator.translate(input)
  end
end