module ConsoleStateInterfaceTest
  def test_responds_to_arrive_top
    assert_respond_to(@state, :arrive_top)
  end

  def test_responds_to_arrive_bottom
    assert_respond_to(@state, :arrive_bottom)
  end

  def test_responds_to_arrive_other
    assert_respond_to(@state, :arrive_other)
  end
end
