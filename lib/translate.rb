require '.lib/morse_translator'

class Translate
  attr_reader :string

  def initialize(string)
    @string = string
