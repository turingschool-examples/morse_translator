class Message
  def initialize(statement, morse)
    @statment = statement
    @morse = morse

  end

  def translation
    @morse.translate("There are 3 ships")
  end
end
