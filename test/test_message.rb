require 'minitest/autorun'
require 'minitest/pride'
require './lib/message.rb'

class MessageTest < Minitest::Test
  def test_it_if_exits
    message = Message.new("There are 3 ships", morse_translator)
    assert_instance_of Message, message
  end
end 
