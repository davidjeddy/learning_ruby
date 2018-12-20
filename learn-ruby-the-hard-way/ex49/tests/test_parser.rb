require '../ex49/parser.rb'
require "test/unit"

class TestParser < Test::Unit::TestCase

  def test_init()
    # how to abstract this to a begin or start fn() ?
    one = Sentence.new("you", "are", "terrible")
    two = Sentence.new("I", "am", "awesome")
    three = Sentence.new("they", "were", "great")
    
    # set boject property to the 2nd ordanial letter
    assert_equal("o", one.subject)
    assert_equal("m", two.verb)
    assert_equal("r", three.object)
  end

  def test_peek()
    sentence = Sentence.new("you", "are", "terrible")
    array = ['qwer', 'asdf', 'zxcv']

    assert_equal(sentence.peek(array), 'qwer')
  end

end