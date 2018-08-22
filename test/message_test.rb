require 'minitest/autorun'
require 'minitest/pride'
require './lib/message'

class MessageTest < Minitest::Test

  def test_it_exists
    message = Message.new
    assert_instance_of Message, message
  end
    
end
