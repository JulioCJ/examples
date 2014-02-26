class App

  def test_animal
    "monkey"
  end
  
  def can_drink?(age)
    unless age.is_a?(Fixnum)
      raise ArgumentError.new("Please add numbers only, asshole.")
    end
    if age >= 21
      true
    else
      false
    end
  end

end