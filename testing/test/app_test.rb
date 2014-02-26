require "test/unit"
require_relative "../app"

class AppTest < Test::Unit::TestCase
 
  def setup
    @app = App.new
  end
  
  def test_animal
    assert_equal "monkey", @app.test_animal
  end
  
  def test_can_drink_true
    assert @app.can_drink?(21)
  end
  
  def test_can_drink_false
    assert_equal false, @app.can_drink?(20)
  end
  
  def test_can_drink_bad_input
    assert_raise ArgumentError do 
      @app.can_drink?("asshole")
    end
  end
  
end